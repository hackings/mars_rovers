require 'spec_helper'

describe "directions" do

  context "all directions" do
    it "Should give north" do
      Direction.north.should == :NORTH
    end
    it "Should give south" do
      Direction.south.should == :SOUTH
    end
    it "Should give east" do
      Direction.east.should == :EAST
    end
    it "Should give west" do
      Direction.west.should == :WEST
    end
  end

  context "change directions" do
    it "Should change by given move if current direction is north" do
      Direction.change(Direction.north, Move.left).should == Direction.west
      Direction.change(Direction.north, Move.right).should == Direction.east
    end
    it "Should change by given move if current direction is south" do
      Direction.change(Direction.south, Move.left).should == Direction.east
      Direction.change(Direction.south, Move.right).should == Direction.west
    end
    it "Should change by given move if current direction is east" do
      Direction.change(Direction.east, Move.left).should == Direction.north
      Direction.change(Direction.east, Move.right).should == Direction.south
    end
    it "Should change by given move if current direction is west" do
      Direction.change(Direction.west, Move.left).should == Direction.south
      Direction.change(Direction.west, Move.right).should == Direction.north
    end
  end

end
