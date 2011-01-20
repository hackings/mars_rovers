require 'spec_helper'

describe "Move" do
  context "moves" do
    it "Should return 'L'" do
      Move.left.should == 'L'
    end
    it "Should return 'R'" do
      Move.right.should == 'R'
    end
    it "Should return 'M'" do
      Move.forward.should == 'M'
    end
  end
  context "Move operations" do
    it "Should get coordinates if direction is North" do
      Move.get_coordinate(Direction.north).to_s.should == Coordinate.new(0, 1).to_s
    end
    it "Should get coordinates if direction is South" do
      Move.get_coordinate(Direction.south).to_s.should == Coordinate.new(0, -1).to_s
    end
    it "Should get coordinates if direction is East" do
      Move.get_coordinate(Direction.east).to_s.should == Coordinate.new(1, 0).to_s
    end
    it "Should get coordinates if direction is West" do
      Move.get_coordinate(Direction.west).to_s.should == Coordinate.new(-1, 0).to_s
    end
  end
end