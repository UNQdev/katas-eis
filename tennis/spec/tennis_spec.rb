require 'rspec'
require_relative '../model/tennis.rb'

describe 'Tennis' do
    
    describe 'initialize a tennis match' do
  
      it 'should starts with both Sets in 0 and points in 00' do
        tennis = Tennis.new("Marcelo","Jose")
        expect(tennis.score.sets_player_one).to eq([0,0])
        expect(tennis.score.points_player_one).to eq(0)
        expect(tennis.score.points_player_two).to eq(0)
      end
    
    end
    

end