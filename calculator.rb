require 'rspec'

class Calculator
  
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end


RSpec.describe Calculator do
  
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      sum = calc.add(4, 6)
      expect(sum).to eq(10)
    end
  end

  describe '#square' do
    it 'should give the square of a number' do
      calc = Calculator.new
      square = calc.square(8)
      expect(square).to eq(64)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calc = Calculator.new
      difference = calc.subtract(10, 5)
      expect(difference).to eq(5)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calc = Calculator.new
      product = calc.multiply(3, 3)
      expect(product).to eq(9)
    end
  end

    describe '#power' do
      it 'should return the power of a number by its exponent' do
        calc = Calculator.new
        power = calc.power(5, 2)
        expect(power).to eq(25)
      end
    end

    describe '#divide' do
      it 'should give the result of the first number divided by the second number' do
        calc = Calculator.new
        divide = calc.divide(20, 5)
        expect(divide).to eq(4)
      end
    end

end