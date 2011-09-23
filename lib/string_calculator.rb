class StringCalculator
  
  def add(numbers)
    numbers == "" ? 0 : numbers.split(",").map(&:to_i).inject {|sum, i| sum + i}
  end
  
end
