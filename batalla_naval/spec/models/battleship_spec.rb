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
      expect{ @battleship.place_ship(ship) }.to raise_error
      expect(@battleship.ships).to be_empty
    end

  end

end