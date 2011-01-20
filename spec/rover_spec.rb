require 'spec_helper'

describe 'rover start position and direction' do

  context "initialize" do

    it "Should give current position and current direction" do
      @rover = Rover.new(Coordinate.new(1, 2), Direction.north, Operation.new('L'))
      @rover.current_position.to_s.should == "1,2"
      @rover.current_direction.should == Direction.north
    end

  end

end

describe 'rover operations' do

  before(:each) do
    @rover = Rover.new(Coordinate.new(1, 2), Direction.north, Operation.new('L'))
  end
  
  context "next coordinate" do
    it "Should give next coordinate" do
      @rover.next_coordinate.to_s.should == "1,3"
    end
  end

  context "move" do
    it "Should move to L" do
      @rover.move.should == ['L']
    end
    
    it "Should move to R" do
      @rover = Rover.new(Coordinate.new(1, 2), Direction.north, Operation.new('R'))
      @rover.move.should == ['R']
    end
    
    it "Should move to M" do
      @rover = Rover.new(Coordinate.new(1, 2), Direction.north, Operation.new('M'))
      @rover.move.should == ['M']
    end
    
    it "Should move to arrays" do
      @rover = Rover.new(Coordinate.new(1, 2), Direction.north, Operation.new('MMRMMRMRRM'))
      @rover.move.should == ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]
    end
  end

  context "move rover" do
    it "Should move rover and change position" do
      @rover.current_position.to_s.should == "1,2"
      @rover.move_rover
      @rover.current_position.to_s.should == "1,3"
    end
  end

end