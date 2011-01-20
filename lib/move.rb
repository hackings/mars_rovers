class Move

  class << self
    def left
      'L'
    end

    def right
      'R'
    end

    def forward
      'M'
    end

    def get_coordinate(direction)
      move_rules = {Direction.north => Coordinate.new(0, 1),
                    Direction.south => Coordinate.new(0, -1),
                    Direction.east => Coordinate.new(1, 0),
                    Direction.west => Coordinate.new(-1, 0)}

      move_rules[direction]
    end
  end
end