require 'rspec'
require_relative '../model/tennis.rb'

describe 'Tennis' do
    
    describe 'initialize a tennis match' do
  
      it 'should starts with both Sets in 0 and points in 00' do
        tennis = Tennis.new("Marcelo","Jose")
        expect(tennis.print_points()).to eq("00 - 00")
        expect(tennis.print_sets()).to eq("[0, 0, 0] - [0, 0, 0]")
      end
    
    end
    
    describe 'player scoring' do
        
      it 'should be 15 - 00 when player ONE scores first' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("15 - 00")
      end
      
      it 'should be 15 - 15 when player TWO scores for the first time after player ONE' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("15 - 15")
      end
      
      it 'should be 30 - 15 when player ONE scores after player TWO tie' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("30 - 15")
      end
      
      it 'should be 30 - 30 when player TWO scores and ties the game' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("30 - 30")
      end
      
      it 'should be 40 - 30 when player ONE scores after player TWO tie' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("40 - 30")
      end
      
      it 'should be 40 - 40 when player TWO scores and ties the game for deuce' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("40 - 40")
      end
      
      it 'should be ADV - 40 when player ONE scores after the deuce' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("ADV - 40")
      end
      
      it 'should be 40 - 40 when player TWO scores after player ONE got the advantage' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("40 - 40")
      end
      
      it 'should be 40 - ADV when player TWO scores after the second deuce ' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("40 - ADV")
      end
      
      it 'should be 40 - 40 when player ONE scores after player TWO got the advantage' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_one()
        tennis.point_player_two()
        tennis.point_player_two()
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("40 - 40")
      end
      
      it 'should be 30 - 00 when player ONE scores for a second straight time' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("30 - 00")
      end
      
      it 'should be 40 - 00 when player ONE scores for a third straight time' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_one()
        tennis.point_player_one()
        tennis.point_player_one()
        expect(tennis.print_points()).to eq("40 - 00")
      end
      
      it 'should be 00 - 15 when player TWO scores first' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("00 - 15")
      end
      
      it 'should be 00 - 30 when player TWO scores for a second straight time' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_two()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("00 - 30")
      end
      
      it 'should be 00 - 40 when player TWO scores for a third straight time' do
        tennis = Tennis.new("Marcelo","Jose")
        tennis.point_player_two()
        tennis.point_player_two()
        tennis.point_player_two()
        expect(tennis.print_points()).to eq("00 - 40")
      end
        
    end

    describe 'points reset' do

    	it 'should be 00 - 00 after player ONE wins a game' do
    		tennis = Tennis.new("Marcelo","Jose")
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		expect(tennis.print_points()).to eq("00 - 00")
    	end

    end

    describe 'points and game reset' do

    	it 'should be 00 - 00 and 0 won games for both players on the second Set' do
    		tennis = Tennis.new("Marcelo","Jose")
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		expect(tennis.print_points()).to eq("00 - 00")
    		expect(tennis.print_sets()).to eq("[6, 0, 0] - [0, 0, 0]")
    	end

    end

    describe 'match finished' do

    	it 'should display winners name' do
    		tennis = Tennis.new("Marcelo","Jose")
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one() #game won by player 1
    		tennis.point_player_one()
    		tennis.point_player_one()
    		tennis.point_player_one()
    		expect(tennis.point_player_one()).to eq("Marcelo WINS!")
    	end

    end

end