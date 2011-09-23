require 'string_calculator'

describe StringCalculator do
  before :each do
    @calculator = StringCalculator.new()
  end                 
  
  describe "#add" do    
      it "should return 0 for zero numbers" do
        @calculator.add("").should == 0
      end

      it "should return the input for one number" do
        @calculator.add("1").should == 1
      end    
          
      it "should return the sum for two numbers" do
        @calculator.add("1,4").should == 5
      end
      
      it "should be able to sum more then two numbers" do
        random_number_string = (0..100).to_a.sort{ rand() - 0.5 }[2..100].map(&:to_s).join(",")
        @calculator.add(random_number_string)
      end
            
  end
  
end
