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

  def divide(num1, num2)
    num1 / num2
  end

  def multiply(num1, num2)
    num1 * num2
  end
end
