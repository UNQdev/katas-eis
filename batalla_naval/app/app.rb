require_relative 'models/battleship'

module BattleshipApp
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get '/' do
      render 'battleship/home'
    end

    post 'generate_board' do
      @battleship = Battleship.new params[:dimension]
      session[:battleship] = @battleship

      render 'battleship/ingame'
  	end

  	post 'place_ship' do
      @ship = Ship.new [[params[:x_pos],params[:y_pos]]]
      @creation_msg = session[:battleship].place_ship @ship
      if @creation_msg.to_s.start_with? 'Invalid'
        @creation_msg
      else
        @creation_msg = 'Ship placed'
      end

      render 'battleship/ingame'
    end

    post 'place_large_ship' do
      @pos1 = [params[:x1_pos],params[:y1_pos]]
      @pos2 = [params[:x2_pos],params[:y2_pos]]
      @ship = Ship.new ([@pos1,@pos2])
      @creation_msg_large = session[:battleship].place_ship @ship
      if @creation_msg_large.to_s.start_with? 'Invalid'
        @creation_msg_large
      else
        @creation_msg_large = 'Ship placed'
      end

      render 'battleship/ingame'
    end

    post 'shoot' do
      @shoot_pos = [params[:shoot_x_pos],params[:shoot_y_pos]]
      @battleship = session[:battleship]
      @ships = @battleship.ships

      if @battleship.valid_shoot? @shoot_pos
        @ships.each do |ship|
          @shoot_result = ship.somebody_shoot(@shoot_pos)
          if @shoot_result.to_s.include? 'Ship'
            @shoot_msg = @shoot_result
          elsif @shoot_msg.to_s.include? 'Ship'
            @shoot_msg
           else
            @shoot_msg = 'Water'
          end
        end
      else
        @shoot_msg = 'Invalid position to shoot'
      end

      render 'battleship/ingame'
    end
  end
end