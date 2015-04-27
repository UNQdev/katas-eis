require 'rspec'
require_relative '../model/score.rb'

describe 'Score' do
    
    describe 'initialize a score' do
  
      it 'should starts with both Sets in 0 and points in 0' do
        score = Score.new()
        expect(score.sets_player_one).to eq([0,0,0])
        expect(score.sets_player_two).to eq([0,0,0])
        expect(score.points_player_one).to eq(0)
        expect(score.points_player_two).to eq(0)
      end
    
    end
    
    describe 'printing points' do
    
      it 'should be 00 - 00' do
        score = Score.new()
        expect(score.print_points()).to eq("00 - 00")
      end
      
      it 'should be 15 - 00' do
        score = Score.new()
        score.point_player_one()
        expect(score.print_points()).to eq("15 - 00")
      end
      
      it 'should be 30 - 00' do
        score = Score.new()
        score.point_player_one()
        score.point_player_one()
        expect(score.print_points()).to eq("30 - 00")
      end
      
      it 'should be 40 - 00' do
        score = Score.new()
        score.point_player_one()
        score.point_player_one()
        score.point_player_one()
        expect(score.print_points()).to eq("40 - 00")
      end
      
      it 'should be ADV - 40' do
        score = Score.new()
        score.point_player_one()
        score.point_player_one()
        score.point_player_one()
        score.point_player_one()
        score.point_player_two()
        score.point_player_two()
        score.point_player_two()
        expect(score.print_points()).to eq("ADV - 40")
      end
    
    end
    
    describe 'printing sets' do
        
      it 'should be [1,0,0] - [0,0,0] when player ONE wins the first game' do
        score = Score.new
        score.game_player_one()
        expect(score.print_sets()).to eq("[1, 0, 0] - [0, 0, 0]")
      end
      
    end
    
end