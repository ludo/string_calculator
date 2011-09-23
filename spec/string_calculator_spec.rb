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
end
