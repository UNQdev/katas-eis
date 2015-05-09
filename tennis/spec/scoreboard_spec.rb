require 'rspec'
require_relative '../model/scoreboard.rb'

describe 'Scoreboard' do

    describe 'initialize' do

      it 'should starts with points in 0' do
      end

      it 'should starts with games in 0' do
      end

      it 'should starts with sets in 0' do
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

        it 'should announce the winners name' do
        end
    end
end