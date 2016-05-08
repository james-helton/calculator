class Calc
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
end
