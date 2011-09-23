require 'string_calculator'

describe StringCalculator do

  it "should have an add method" do
    StringCalculator.should respond_to(:add)
  end
end
