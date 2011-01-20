class Rover
  attr_accessor :current_position, :current_direction

  def initialize(start_coordinate, direction, operations)
    @current_position = start_coordinate
    @current_direction = direction
    @operations = operations
  end

  def next_coordinate
    move_to_make = Move.get_coordinate @current_direction
    new_coordinate = Coordinate.new(@current_position.x, @current_position.y)
    new_coordinate.add(move_to_make)
  end

  def move
    @operations.rover_moves.each do |move|
      if (move == Move.left || move == Move.right)
        @current_direction = Direction.change(@current_direction, move)
      end
      if (move == Move.forward)
        move_rover
      end
    end
  end

  def move_rover
    move_to_make = Move.get_coordinate(@current_direction)
    @current_position.add(move_to_make)
  end
end