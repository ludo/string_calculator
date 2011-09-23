require 'string_calculator'

describe StringCalculator do

  describe "add" do

    it "should return 0 for an empty string" do
      subject.add("").should == 0
    end

    it "should return the numeric value of the string" do
      subject.add("1").should == 1
    end

    it "should return the sum of multiple values provided in a csv form" do
      subject.add("1,2").should == 3
    end

    it "should handle an unknown amount of numbers" do
      subject.add("1,2123,123,123,123,123,1243,5,345,346,36")
    end

    it "should return the sum of multiple values provided with a line-break as separator" do
      subject.add("1\n2\n3\n5\n8").should == 19
    end

    it "should allow mixed separators" do
      subject.add("1\n2,3").should == 6
    end

    it "allow custom delimiters if specified in the first line" do
      subject.add("//;\n1;2").should == 3
    end

    it "should not allow negative numbers" do
      expect { subject.add("-1") }.to raise_error
    end

    it "should describe the negative numbers in an error message" do
      expect { subject.add("-1,-2") }.to raise_error "Negatives are not allowed: -1, -2"
    end



  end

end
