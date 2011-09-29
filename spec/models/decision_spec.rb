require 'spec_helper'

describe Decision do

  before :each do
  
  end
  
  context "validator" do
    it "has some required attributes" do
      d = Decision.new

      d.built_at.should == 0.25

      [d.built_at, d.length, d.engine, d.price].sum.should == 1

      d.valid?.should == true

      d.built_at = 0.0

      d.valid?.should == false

      d.built_at = 0.25
      d.e_power = 0.1

      d.valid?.should == false
    end
  end

  context "should make some decisions" do
    it "can make decision" do
      d = Decision.new
      d.should respond_to(:decide)
      d.should respond_to(:importance)
    end

    it "can calculate importance" do
      d = Decision.new
      d.importance.size.should == 6
    end

  end


end
