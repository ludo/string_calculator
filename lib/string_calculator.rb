class IllegalArgumentError < StandardError
  attr_accessor :illegal_arguments

  def initialize(args)
    @illegal_arguments = args[:illegal_arguments]
  end
end

class StringCalculator
  class<<self
    def add(value)
      parse_numbers(value).inject(0) { |sum, v| sum += v}
    end

    private
    def parse_numbers(value)
      separator = value[%r{//(.*)\n}, 1] || /[,\n]/
      result = value.split(separator).map { |v| v.to_i }

      negatives = result.select { |i| i < 0 }

      if negatives.size > 0
        raise IllegalArgumentError.new(:illegal_arguments => negatives)
      end

      result
    end
  end
end
