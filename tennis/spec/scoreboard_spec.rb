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
        expect(@scoreboard.player_one_sets.all? {|set| set == 0}).to eq true
        expect(@scoreboard.player_two_sets.all? {|set| set == 0}).to eq true
      end
    end

    describe 'points reset' do

    	it 'should be 00 - 00 after a player ONE wins a game' do
            4.times { @scoreboard.point_player_one }

            expect(@scoreboard.player_one_points).to eq 0
            expect(@scoreboard.player_two_points).to eq 0
    	end

        it 'should be 00 - 00 after a player TWO wins a game' do
            4.times { @scoreboard.point_player_two }

            expect(@scoreboard.player_one_points).to eq 0
            expect(@scoreboard.player_two_points).to eq 0
        end
    end

    describe 'set reset' do

    	it 'should be 00 - 00 and 0 won games for both players starting second set' do
            @scoreboard.set_player_one #player one wins the first set

            expect(@scoreboard.player_one_points).to eq 0
            expect(@scoreboard.player_two_points).to eq 0
            expect(@scoreboard.player_one_games).to eq 0
            expect(@scoreboard.player_two_games).to eq 0
            expect(@scoreboard.actual_set).to eq 1
    	end

        it 'should be 00 - 00 and 0 won games for both players starting third set' do
            @scoreboard.set_player_one #player one wins first set
            @scoreboard.set_player_two #player two wins second set

            expect(@scoreboard.player_one_points).to eq 0
            expect(@scoreboard.player_two_points).to eq 0
            expect(@scoreboard.player_one_games).to eq 0
            expect(@scoreboard.player_two_games).to eq 0
            expect(@scoreboard.actual_set).to eq 2
        end
    end

    describe 'game won' do

        it 'should pass from [0,0,0] to [1,0,0]' do
            @scoreboard.game_player_two

            expect(@scoreboard.player_two_games).to eq 1
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