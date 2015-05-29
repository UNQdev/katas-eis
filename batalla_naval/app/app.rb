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
    end

    post 'shoot' do
    end
  end
end