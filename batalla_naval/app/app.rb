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
    end

    post 'place_large_ship' do
    end

    post 'shoot' do
    end
  end
end