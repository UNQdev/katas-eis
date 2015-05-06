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

end