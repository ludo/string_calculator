class StringCalculator

  def add(numbers="")
    numbers.split(",").inject(0) {|sum, n| sum + n.to_f }
  end

end
