require 'rspec'
require_relative '../model/tennis.rb'

describe 'Tennis' do
  
  it 'should starts with 0 - 0 sets' do
    tennis_match = Tennis.new
    tennis_match.marcador_sets().should be "0 - 0"
  end
  
  it 'should starts with 0 - 0 games' do
    tennis_match = Tennis.new
    tennis_match.marcador_games().should be "0 - 0"
  end
  
  it 'should starts with 0 - 0 points' do
    tennis_match = Tennis.new
    tennis_match.marcador_puntos().should be "0 - 0"
  end

end
