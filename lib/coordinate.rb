class Coordinate
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def add(coordinate)
    @x = @x + coordinate.x
    @y = @y + coordinate.y
    self
  end

  def to_s
    "#{@x},#{@y}"
  end
end