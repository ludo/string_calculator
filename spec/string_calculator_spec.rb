require 'string_calculator'

describe StringCalculator do
  context "1" do
    it "should have an add method" do
      StringCalculator.should respond_to(:add)
    end

    it ".1 - it can take no numbers" do
      StringCalculator.add("").should eql(0)
    end

    it ".1 - it can take 1 number" do
      StringCalculator.add("42").should eql(42)
    end

    it ".1 - it can take 2 numbers" do
      StringCalculator.add("20,22").should eql(42)
    end
  end

  context "2" do
    it "should allow any amount of numbers" do
      numbers = "5,3,23,98,12,9,2"
      StringCalculator.add(numbers).should eql(152)
    end
  end
end
