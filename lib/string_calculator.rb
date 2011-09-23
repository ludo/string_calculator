class StringCalculator

  def add(numbers)
    result = 0
    delimiter = /[,|\n]/
    if results = numbers.match(/\/\/(.*)\n(.*)/)
      delimiter = results[1]
      numbers = results[2]
    end

    numbers = numbers.split(delimiter).map(&:to_i)

    negative_numbers = numbers.select { |number| number < 0 }
    if negative_numbers.length > 0
      raise "Negatives are not allowed: #{negative_numbers.join(", ")}"
    end
    

    numbers.each do |value|
      result += value
    end
    result
  end

end
