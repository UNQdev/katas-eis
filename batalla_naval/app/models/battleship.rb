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
      'Invalid position to place a ship'
    end
  end

  def shoot(position)
    if valid_shoot? position
      @ships.each do |ship|
        ship.somebody_shoot(position)
      end
    else
      'Invalid position to shoot'
    end
  end

  def valid_positions?(ship)
    ship.location.all? { |position| position[0][0] <= @board[0] && position[0][1] <= @board[1] }
  end

  def ship_placed?(position)
    @ships.any? { |ship| ship.location.include?(position) }
  end

  def valid_shoot?(position)
    position[0] <= @board[0] && position[1] <= @board[1]
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
        'Ship sinking'
      else
        mark_hit(position)
        'Ship hit'
      end
    end
  end

  def got_hit?
    @location.any? { |ship_pos| ship_pos[1] == true }
  end

  def sank?
    @location.all? { |ship_pos| ship_pos[1] == true }
  end

  def mark_hit(position)
    @location.each do |ship_pos|
      if ship_pos[0] == position
        ship_pos[1] = true
      end
    end
  end

end
