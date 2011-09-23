require 'string_calculator'

describe StringCalculator do
  it "should return 0 if an nothing is given" do
    subject.add().should == 0
  end
  
  it "should return 0 if 0 is given" do
    subject.add("0").should == 0    
  end  
  
  it "should return 0 if 2 0's are given" do
    subject.add("0, 0").should == 0        
  end  
  
  it "should return 1 if 1 is given" do
    subject.add("1").should == 1
  end
    
  it "should return 1 if 0, 1 is given" do
    subject.add("0, 1").should == 1
  end  
  
  it "should return 1 if 1, 0 is given" do
    subject.add("1, 0").should == 1
  end  
  
  it "should return 4 if 2, 2 is given" do
    subject.add("2, 2").should == 4
  end  
  
  it "should be able to handle over 9000 numbers" do
    arr = 9999.times.collect
    subject.add(arr.join(", ")).should == arr.reduce(:+)
  end
  
  it "should be able to handle newlines and comma's" do
    subject.add("2\n2").should == 4
  end
  
  it "should be able to handle newlines and comma's" do
    subject.add("1\n2,3").should == 6
  end  
end