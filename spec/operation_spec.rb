require 'spec_helper'

describe "Operation" do
  context "initialize" do
    it "Should initialize and give array of moves" do
      Operation.new("LMLMLMLMM").rover_moves.should == ['L','M','L','M','L','M','L','M','M']
    end
    it "Should covert moves and give array of moves" do
      @operation = Operation.new("LMLMLMLMM")
      @operation.rover_moves.should == ['L','M','L','M','L','M','L','M','M']
      @operation.convert_moves("MMLLRR")
      @operation.rover_moves.should == ['L','M','L','M','L','M','L','M','M', 'M', 'M', 'L','L','R','R']
    end
    it "Should covert moves and give array of moves when init moves blank" do
      @operation = Operation.new("")
      @operation.rover_moves.should == []
      @operation.convert_moves("MMLLRR")
      @operation.rover_moves.should == ['M', 'M', 'L','L','R','R']
    end
  end
end