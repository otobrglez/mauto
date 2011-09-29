require 'spec_helper'

describe Car do

  before :each do
  
  end

  context "basic methods" do
    it "responds to #to_s method" do
      c = Car.new
      c.should respond_to(:to_s)
    
      c.make = "Audi"
      c.model = "A4"
      
      c.to_s.should == "Audi - A4"
      
    end
    
    it "responds to #to_param method" do
      c = Car.new
      c.should respond_to(:to_param)
      c.make = "Audi"
      c.model = "A8"
      c.built_at = Time.now
      
      c.to_param.should == "audi-a8-"+Time.now.strftime("%Y")
    end
  end

  context "validator" do
    it "has some required attributes" do
      c = Car.new
      c.should have(1).error_on(:make)
      c.should have(1).error_on(:model)
      c.should have(2).error_on(:e_power)
      c.should have(2).error_on(:e_horses)
      c.should have(2).error_on(:e_space)
      c.should have(2).error_on(:price)
      c.should have(1).error_on(:built_at)
      c.should have(2).error_on(:length)

    end
  end

end
