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

  context "3" do
    it "should allow comma and \n separators" do
      numbers = "5,3\n23,98\n12,9,2"
      StringCalculator.add(numbers).should eql(152)
    end
  end

  context "4" do
    it "should allow custom separators" do
      seperator = ";"
      numbers = "5;3;7"
      StringCalculator.add("//#{seperator}\n#{numbers}").should eql(15)
    end

    it "should allow multi-character custom separators" do
      seperator = "-=-"
      numbers = "5-=-7-=-3"
      StringCalculator.add("//#{seperator}\n#{numbers}").should eql(15)
    end
  end

  context "5" do
    it "should raise an exception on a negative number" do
      lambda {
        StringCalculator.add("2,-1")
      }.should raise_error(IllegalArgumentError)
    end

    it "should raise an exception on a negative number" do
      begin
        StringCalculator.add("2,-1")
      rescue => e
        e.illegal_arguments.should include(-1)
      else
        fail
      end
    end

    it "should raise an exception on multiple negative number" do
      begin
        StringCalculator.add("2,-1,-3,5")
      rescue => e
        e.illegal_arguments.should include(-1)
        e.illegal_arguments.should include(-3)
      else
        fail
      end
    end

  end
end
