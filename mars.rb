# This file is to show running solution of Mars Rover problem.



Dir["lib/**/*.rb"].sort.each { |file| require(File.dirname(__FILE__) + "/"+ file) }

puts "Setting cordinate as 5,5"
@plateau = Plateau.new(Coordinate.new(5,5))
puts "Now adding a rover with coordinates 1,2 and north direction and performing opeartions as 'LMLMLMLMM'"
@plateau.add_rover(Rover.new(Coordinate.new(1, 2),
                             Direction.north, Operation.new('LMLMLMLMM')))
@plateau.start_rovers
rovers = @plateau.rover_positions
puts "My current position is #{rovers[0].current_position.to_s}"
puts "My current direction is #{rovers[0].current_direction}"

puts "==========================================================="

puts "Now another move"
@plateau = Plateau.new(Coordinate.new(5,5))
puts "Now adding a rover with coordinates 3,3 and east direction and performing opeartions as 'MMRMMRMRRM'"
@plateau.add_rover(Rover.new(Coordinate.new(3, 3),
                             Direction.east, Operation.new('MMRMMRMRRM')))
@plateau.start_rovers
rovers = @plateau.rover_positions
puts "My current position is #{rovers[0].current_position.to_s}"
puts "My current direction is #{rovers[0].current_direction}"


