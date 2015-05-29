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
      @ship = Ship.new [[]]

      begin
        session[:board].add_small_ship_in coordinate, Ship.small_ship
      rescue Exception => e
        @small_creation_message = e.message
      end

      @board = session[:board]

      render 'batalla/juego'
    end

    post 'place_large_ship' do
    end

    post 'shoot' do
    end
  end
end