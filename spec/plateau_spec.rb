require 'spec_helper'

describe 'Plateau' do

  before(:each) do
    @plateau = Plateau.new(Coordinate.new(5,5))
    @rovers = @plateau.add_rover(Rover.new(Coordinate.new(1,2),
                                 Direction.north,
                                 Operation.new('M')))
    @rover = @rovers.first
  end

  context "Plateau operations" do
    it "Should add rovers" do
      @rover.current_position.to_s.should == "1,2"
      @rover.current_direction.should == Direction.north
      @plateau.rover_positions.should == @rovers
    end

    it "Should raise error when current position is same" do
      @rover.current_position.to_s.should == "1,2"
      @rover.current_direction.should == Direction.north
      @plateau.rover_positions.should == @rovers
      begin
        @plateau.add_rover(Rover.new(Coordinate.new(1,2),
                                     Direction.north,
                                     Operation.new('M')))
      rescue Exception => e
        e.should be_a_kind_of(DuplicateRoverError)
      end
    end

    it "Should start rovers" do
      rover = @plateau.start_rovers.first
      rover.current_position.to_s.should == '1,3'
    end

    it "Should give error when end point is less" do
      @plateau = Plateau.new(Coordinate.new(1,2))
      @rovers = @plateau.add_rover(Rover.new(Coordinate.new(1,2),
                                   Direction.north,
                                   Operation.new('M')))
      
      begin
        @plateau.start_rovers.first  
      rescue Exception => e
        e.should be_a_kind_of(OutOfPlateauError)
      end
    end
    
    it "Should return rover positions" do
      @plateau.rover_positions.should == @rovers
    end
  end
  
end
