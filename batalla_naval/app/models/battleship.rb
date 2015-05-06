class Battleship

  attr_accessor :board, :ships

  def initialize(dimension)
    @board = [dimension,dimension]
    @ships = []
  end

  def place_ship(ship)
    if valid_positions? ship
      @ships << ship
    else
      raise InvalidPosition, "Invalid position to place ship"
    end
  end

  def shoot(position)
  end

  def valid_positions?(ship)
    ship.location.all? { | position | position[0][0] <= @board[0] && position[0][1] <= @board[1] }
  end

  def no_ships_left?
  end

  def ship_placed?(positions)
    positions.any? { | position | @ships.any? { | ship | ship.location.any? { | ship_position | ship_position == position }}}
  end
end


class InvalidPosition < Exception
end