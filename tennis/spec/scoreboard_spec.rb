require 'rspec'
require_relative '../model/scoreboard.rb'

describe 'Scoreboard' do

    before (:each) do
        @scoreboard = Scoreboard.new("Marcelo","Jose")
    end

    describe 'initialize' do

      it 'should starts with actual set in 0' do
        expect(@scoreboard.actual_set).to eq 0
      end

      it 'should starts with points in 0' do
        expect(@scoreboard.player_one_points).to eq 0
        expect(@scoreboard.player_two_points).to eq 0
      end

      it 'should starts with games in 0' do
        expect(@scoreboard.player_one_games).to eq 0
        expect(@scoreboard.player_two_games).to eq 0
      end

      it 'should starts with sets in 0' do
        expect(@scoreboard.player_one_sets).to eq 0
        expect(@scoreboard.player_two_sets).to eq 0
      end
    end

    describe 'points reset' do

    	it 'should be 00 - 00 after a player wins a game' do
    	end
    end

    describe 'points and game reset' do

    	it 'should be 00 - 00 and 0 won games for both players on second set' do

    	end

        it 'should be 00 - 00 and 0 won games for both players on third set' do

        end
    end

    describe 'game won' do

        it 'should pass from [0,0,0] to [1,0,0]' do
        end

        it 'should reset points' do
        end

    end

    describe 'game and set won' do

        it 'should be [6,0,0] and actual set should be the second' do
        end

    end

    describe 'match won' do

        it 'should announce the winner' do
        end
    end
end