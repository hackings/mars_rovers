require 'spec_helper'

describe "coordinate x and y" do
  context "initialize x and y" do
    it "Should set x and y" do
      coordinate = Coordinate.new(1, 2)
      coordinate.x.should == 1
      coordinate.y.should == 2
    end
  end
end

describe "coordinate operations" do

  before(:each) do
    @coordinate = Coordinate.new(1, 2)    
  end
  
  context "x and y" do
    it "Should add" do
      @coordinate.x.should == 1
      @coordinate.y.should == 2
      @coordinate.add(Coordinate.new(2, 2))
      @coordinate.x.should == 3
      @coordinate.y.should == 4
    end

    it "Should return string" do
      @coordinate.to_s.should == "1,2"
    end
  end
end