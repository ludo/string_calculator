require 'string_calculator'

describe StringCalculator do
  before(:each) do
    @calc = StringCalculator.new
  end
  
  it "should return a StringCalculator instance" do
    @calc.should be_a(StringCalculator)
  end

  describe "no parameters passed" do
    it "should return 0 when sum is called without parameters" do
      @calc.add.should == 0
    end
  end

  describe "one number passed" do
    it "should return 0 as value if that's the only parameter" do
     @calc.add("0").should == 0 
    end

    it "should return 1 as value if that's the only parameter" do
     @calc.add("1").should == 1 
    end

    it "should return the passed value if that's the only parameter" do
     @calc.add("123").should == 123 
    end

    it "should return the passed value even if that's a negative value" do
     @calc.add("-123").should == -123 
    end
    
    it "should return the passed value even if that's a decimal" do
     @calc.add("12.3").should == 12.3 
    end
  end

  describe "two numbers passed" do
    it "should return the sum of two numbers" do
      @calc.add("1,2").should == 3
    end

    it "should return the sum of two numbers when divided with comma-space" do
      @calc.add("1, 2").should == 3
    end
  end

  describe "3 numbers passed" do
    it "should return the sum of three numbers" do
      @calc.add("1,2,3").should == 6
    end
  end

  describe "different parameters" do

  end
end
