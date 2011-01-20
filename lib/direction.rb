class Direction

  class << self

    def north
      :NORTH
    end

    def south
      :SOUTH
    end

    def east
      :EAST
    end

    def west
      :WEST
    end

    def change(direction, move)
      @left_directions = {Direction.north => Direction.west,
                          Direction.west => Direction.south,
                          Direction.south => Direction.east,
                          Direction.east => Direction.north}
      @right_directions = {Direction.north => Direction.east,
                           Direction.east => Direction.south,
                           Direction.south => Direction.west,
                           Direction.west => Direction.north}

      direction = @left_directions[direction] if move == Move.left
      direction = @right_directions[direction] if move == Move.right

      return direction
    end

  end

end