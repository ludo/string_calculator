class StringCalculator
  def add(str = "")
    str.split(/(\,|\n)/).map(&:to_i).reduce(:+) || 0
  end
end
