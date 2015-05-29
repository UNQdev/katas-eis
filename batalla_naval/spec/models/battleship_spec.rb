require_relative '../../app/models/battleship.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @battleship = Battleship.new 5
  end

  it 'create a Battleship' do
    expect(@battleship.kind_of? Battleship).to eq true
  end

  it 'should create a 5x5 battleship' do
    expect(@battleship.board[0]).to eq 5
    expect(@battleship.board[1]).to eq 5
  end

  describe 'placing small ships on a 5x5 battleship' do

    it 'should be a ship placed in 3:3 when its created' do
      position = [[3,3]]
      expected = [[[3,3], false]]
      ship = Ship.new(position)
      expect(ship.location).to include(expected[0])
      expect(ship.location).to eq expected
      @battleship.place_ship(ship)
      expect(@battleship.ships).not_to be_empty
    end

    it 'should not be a ship placed in 6:6 since is a invalid position' do
      position = [[6,6]]
      expected = [[[6,6], false]]
      ship = Ship.new(position)
      expect(ship.location).to eq expected
      expect(@battleship.place_ship(ship)).to eq 'Invalid position to place a ship'
      expect(@battleship.ships).to be_empty
    end
  end

  describe 'placing large ships on a 5x5 battleship' do

    it 'should be a ship placed in 3:3 and 3:4 when its created' do
      position_one = [3,3]
      position_two = [3,4]
      expected_one = [[3,3], false]
      expected_two = [[3,4], false]
      ship = Ship.new([position_one, position_two])
      expect(ship.location).to include(expected_one)
      expect(ship.location).to include(expected_two)
      @battleship.place_ship(ship)
      expect(@battleship.ships).not_to be_empty
    end

    it 'should not be a ship placed in 6:6 and 5:6 since is a invalid position' do
      position_one = [5,6]
      position_two = [6,6]
      expected_one = [[5,6], false]
      expected_two = [[6,6], false]
      ship = Ship.new([position_one, position_two])
      expect(ship.location).to include(expected_one)
      expect(ship.location).to include(expected_two)
      expect(@battleship.place_ship(ship)).to eq 'Invalid position to place a ship'
      expect(@battleship.ships).to be_empty
    end
  end

  describe 'shooting at ships' do

    before (:each) do
      positions = [[3,4], [4,4]]
      @ship = Ship.new(positions)
      @battleship.place_ship(@ship)
    end

    it 'should shoot and hit' do
      position = [3,4]
      expect(@ship.somebody_shoot(position)).to eq 'Ship hit'
    end

    it 'should shoot and miss' do
      position = [3,2]
      expect(@ship.somebody_shoot(position)).to eq nil
    end

    it 'should shoot and sink' do
      first_pos = [3,4]
      second_pos = [4,4]
      expect(@ship.somebody_shoot(first_pos)).to eq 'Ship hit'
      expect(@ship.somebody_shoot(second_pos)).to eq 'Ship sinking'
    end

    it 'should be an invalid shoot' do
      position = [[6,6]]
      expect(@battleship.shoot(position)).to eq 'Invalid position to shoot'
    end

  end

end