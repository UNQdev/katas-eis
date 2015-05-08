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
      raise InvalidPosition, 'Invalid position to place a ship'
    end
  end

  def shoot(position)
    if valid_shoot? position
      @ships.each do |ship|
        ship.somebody_shoot(position)
      end
    else
      raise InvalidPosition, 'Invalid position to shoot'
    end
  end

  def valid_positions?(ship)
    ship.location.all? { |position| position[0][0] <= @board[0] && position[0][1] <= @board[1] }
  end

  def ship_placed?(position)
    @ships.any? { |ship| ship.location.include?(position) }
  end

  def valid_shoot?(position)
    position[0][0] <= @board[0] && position[0][1] <= @board[1]
  end
end



class Ship

  attr_accessor :location

  def initialize(positions)
    @location = []
    positions.each do | position |
      @location << [position, false]
    end
  end

  def somebody_shoot(position)
    if @location.any? { |ship_pos| position == ship_pos[0] }
      if got_hit? && !sank?
        raise Sank, 'Ship sinking'
      else
        ship_pos[1] = true
        raise Hit, 'Ship hit'
      end
    end
  end

  def got_hit?
    @location.any? { |position| position[1] == true }
  end

  def sank?
    @location.all? { |position| position[1] == true }
  end

end



class InvalidPosition < Exception
end

class Hit < Exception
end

class Sank < Exception
end
