class StringCalculator
  class<<self
    def add(value)
      value.split(",").inject(0) { |sum, v| sum += v.to_i }
    end
  end
end
