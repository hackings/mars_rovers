class Plateau
  def initialize(end_point)
    @start_point = Coordinate.new(0, 0)
    @end_point = end_point
    @rovers = []
  end

  def add_rover(rover)
    @rovers.each do |item|
      raise DuplicateRoverError if item.current_position.to_s == rover.current_position.to_s
    end
    @rovers.push rover
  end

  def start_rovers
    @rovers.each do |rover|
      next_move = rover.next_coordinate
      if (next_move.x > @end_point.x || next_move.x < 0 ||
              next_move.y > @end_point.y || next_move.y < 0)
        raise OutOfPlateauError
      end

      rover.move
    end
  end

  def rover_positions
    return @rovers
  end
end