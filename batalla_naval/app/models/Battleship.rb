class Battleship

  attr_accessor :board, :ships

  def initialize(dimension)
    @board = [dimension,dimension]
    @ships = []
  end

  def place_ship(ship)
  end

  def shoot(position)
  end


  def valid_positions?(ship)
  end

  def no_ships_left?
  end

end