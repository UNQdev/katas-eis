require 'rspec'
require_relative '../model/match_states.rb'

describe 'Match States' do

  describe 'when Love Love' do

    before (:each) do
      @match_state = LoveLove.new
    end

    it 'should be LoveLove' do
      expect(@match_state.kind_of? LoveLove).to eq true
    end

    it 'and points should be 00 - 00' do
      expect(@match_state.points).to eq '00 - 00'
      expect(@match_state.player_one_points).to eq 0
      expect(@match_state.player_two_points).to eq 0
    end
  end


  describe 'when Love Fifteen' do

    before (:each) do
      @match_state = LoveFifteen.new
    end

    it 'should be LoveFifteen' do
      expect(@match_state.kind_of? LoveFifteen).to eq true
    end

    it 'and points should be 00 - 15' do
      expect(@match_state.points).to eq '00 - 15'
      expect(@match_state.player_one_points).to eq 0
      expect(@match_state.player_two_points).to eq 15
    end
  end


  describe 'when Love Thirty' do

    before (:each) do
      @match_state = LoveThirty.new
    end

    it 'should be LoveThirty' do
      expect(@match_state.kind_of? LoveThirty).to eq true
    end

    it 'and points should be 00 - 30' do
      expect(@match_state.points).to eq '00 - 30'
      expect(@match_state.player_one_points).to eq 0
      expect(@match_state.player_two_points).to eq 30
    end
  end


  describe 'when Love Forty' do

    before (:each) do
      @match_state = LoveForty.new
    end

    it 'should be LoveForty' do
      expect(@match_state.kind_of? LoveForty).to eq true
    end

    it 'and points should be 00 - 40' do
      expect(@match_state.points).to eq '00 - 40'
      expect(@match_state.player_one_points).to eq 0
      expect(@match_state.player_two_points).to eq 40
    end
  end

  describe 'when Fifteen Love' do

    before (:each) do
      @match_state = FifteenLove.new
    end

    it 'should be FifteenLove' do
      expect(@match_state.kind_of? FifteenLove).to eq true
    end

    it 'and points should be 15 - 00' do
      expect(@match_state.points).to eq '15 - 00'
      expect(@match_state.player_one_points).to eq 15
      expect(@match_state.player_two_points).to eq 0
    end
  end


  describe 'when Fifteen Fifteen' do

    before (:each) do
      @match_state = FifteenFifteen.new
    end

    it 'should be FifteenFifteen' do
      expect(@match_state.kind_of? FifteenFifteen).to eq true
    end

    it 'and points should be 15 - 15' do
      expect(@match_state.points).to eq '15 - 15'
      expect(@match_state.player_one_points).to eq 15
      expect(@match_state.player_two_points).to eq 15
    end
  end


  describe 'when Fifteen Thirty' do

    before (:each) do
      @match_state = FifteenThirty.new
    end

    it 'should be FifteenThirty' do
      expect(@match_state.kind_of? FifteenThirty).to eq true
    end

    it 'and points should be 15 - 30' do
      expect(@match_state.points).to eq '15 - 30'
      expect(@match_state.player_one_points).to eq 15
      expect(@match_state.player_two_points).to eq 30
    end
  end


  describe 'when Fifteen Forty' do

    before (:each) do
      @match_state = FifteenForty.new
    end

    it 'should be FifteenForty' do
      expect(@match_state.kind_of? FifteenForty).to eq true
    end

    it 'and points should be 15 - 40' do
      expect(@match_state.points).to eq '15 - 40'
      expect(@match_state.player_one_points).to eq 15
      expect(@match_state.player_two_points).to eq 40
    end
  end


  describe 'when Thirty Love' do

    before (:each) do
      @match_state = ThirtyLove.new
    end

    it 'should be ThirtyLove' do
      expect(@match_state.kind_of? ThirtyLove).to eq true
    end

    it 'and points should be 30 - 00' do
      expect(@match_state.points).to eq '30 - 00'
      expect(@match_state.player_one_points).to eq 30
      expect(@match_state.player_two_points).to eq 0
    end
  end


  describe 'when Thirty Fifteen' do

    before (:each) do
      @match_state = ThirtyFifteen.new
    end

    it 'should be ThirtyFifteen' do
      expect(@match_state.kind_of? ThirtyFifteen).to eq true
    end

    it 'and points should be 30 - 15' do
      expect(@match_state.points).to eq '30 - 15'
      expect(@match_state.player_one_points).to eq 30
      expect(@match_state.player_two_points).to eq 15
    end
  end


  describe 'when Thirty Thirty' do

    before (:each) do
      @match_state = ThirtyThirty.new
    end

    it 'should be T' do
      expect(@match_state.kind_of? ThirtyThirty).to eq true
    end

    it 'and points should be 30 - 30' do
      expect(@match_state.points).to eq '30 - 30'
      expect(@match_state.player_one_points).to eq 30
      expect(@match_state.player_two_points).to eq 30
    end
  end



  describe 'when Thirty Forty' do

    before (:each) do
      @match_state = ThirtyForty.new
    end

    it 'should be ThirtyForty' do
      expect(@match_state.kind_of? ThirtyForty).to eq true
    end

    it 'and points should be 30 - 40' do
      expect(@match_state.points).to eq '30 - 40'
      expect(@match_state.player_one_points).to eq 30
      expect(@match_state.player_two_points).to eq 40
    end
  end


  describe 'when Forty Love' do

    before (:each) do
      @match_state = FortyLove.new
    end

    it 'should be FortyLove' do
      expect(@match_state.kind_of? FortyLove).to eq true
    end

    it 'and points should be 40 - 00' do
      expect(@match_state.points).to eq '40 - 00'
      expect(@match_state.player_one_points).to eq 40
      expect(@match_state.player_two_points).to eq 00
    end
  end


  describe 'when Forty Fifteen' do

    before (:each) do
      @match_state = FortyFifteen.new
    end

    it 'should be FortyFifteen' do
      expect(@match_state.kind_of? FortyFifteen).to eq true
    end

    it 'and points should be 40 - 15' do
      expect(@match_state.points).to eq '40 - 15'
      expect(@match_state.player_one_points).to eq 40
      expect(@match_state.player_two_points).to eq 15
    end
  end


  describe 'when Forty Thirty' do

    before (:each) do
      @match_state = FortyThirty.new
    end

    it 'should be FortyThirty' do
      expect(@match_state.kind_of? FortyThirty).to eq true
    end

    it 'and points should be 40 - 30' do
      expect(@match_state.points).to eq '40 - 30'
      expect(@match_state.player_one_points).to eq 40
      expect(@match_state.player_two_points).to eq 30
    end
  end



  describe 'when Deuce' do

    before (:each) do
      @match_state = Deuce.new
    end

    it 'should be Deuce' do
      expect(@match_state.kind_of? Deuce).to eq true
    end

    it 'and points should be 40 - 40' do
      expect(@match_state.points).to eq '40 - 40'
      expect(@match_state.player_one_points).to eq 40
      expect(@match_state.player_two_points).to eq 40
    end
  end


  describe 'when Advantaje Player One' do

    before (:each) do
      @match_state = AdvPlayerOne.new
    end

    it 'should be AdvPlayerOne' do
      expect(@match_state.kind_of? AdvPlayerOne).to eq true
    end

    it 'and points should be ADV - 40' do
      expect(@match_state.points).to eq 'ADV - 40'
      expect(@match_state.player_one_points).to eq 'ADV'
      expect(@match_state.player_two_points).to eq 40
    end
  end


  describe 'when Advantaje Player Two' do

    before (:each) do
      @match_state = AdvPlayerTwo.new
    end

    it 'should be AdvPlayerTwo' do
      expect(@match_state.kind_of? AdvPlayerTwo).to eq true
    end

    it 'and points should be 40 - ADV' do
      expect(@match_state.points).to eq '40 - ADV'
      expect(@match_state.player_one_points).to eq 40
      expect(@match_state.player_two_points).to eq 'ADV'
    end
  end
end