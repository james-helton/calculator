class Calc
  def initialize(*raw_input)
    if raw_input.count > 0
      parse_statement(raw_input)
      calculate
    else
      'invalid equation'
    end
  end

  def add(augend, *addend)
    sum = augend
    addend.each { |x| sum += x }
    sum
  end

  def subtract(minuend, *subtrahend)
    difference = minuend
    subtrahend.each { |x| difference -= x }
    difference
  end

  def divide(dividend, *divisor)
    quotient = dividend
    divisor.each { |x| quotient /= x }
    quotient
  end

  def multiply(multiplier, *multiplicand)
    product = multiplier
    multiplicand.each { |x| product *= x }
    product
  end

  def calculate
    answer = @statement[0].to_f
    (1..@statement.length-1).step(2) do |x|
      if (@statement[x] == "+")
        answer = add(answer, @statement[x+1].to_f)
      elsif (@statement[x] == "-")
        answer = subtract(answer, @statement[x+1].to_f)
      elsif (@statement[x] == "/")
        answer = divide(answer, @statement[x+1].to_f)
      elsif (@statement[x] == "*")
        answer = multiply(answer, @statement[x+1].to_f)
      end
    end
    answer
  end

  def parse_statement(input)
    if input.length > 1
      @statement = valid_statement?(input)
    else
      my_statement = input[0].split
      if valid_statement?(my_statement)
        @statement = my_statement
      else
        puts 'invalid statement'
      end
    end
  end

  def valid_statement?(my_statement)
    if (my_statement.length.odd?)   # may be valid TODO: check for operand, operator...
      true
    else                            # definitely not valid
      false
    end
  end
end
