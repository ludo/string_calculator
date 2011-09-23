class StringCalculator
  class<<self
    def add(value)
      separator = value[%r{//(.*)\n}, 1] || /[,\n]/
      value.split(separator).inject(0) { |sum, v| sum += v.to_i }
    end
  end
end
