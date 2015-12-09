require 'rspec'

 class ChangeMaker 
  def output(number)
    coins = []
    while number > 0
      if number >= 25
        coins << 25
        number -= 25
      elsif number >= 10
        coins << 10
        number -= 10
      elsif number >= 5
        coins << 5
        number -= 5 
      
      elsif number < 5
        coins << 1
        number -= 1
      end
    end
    return coins 

    
  end

end






RSpec.describe ChangeMaker do
  describe '#output' do
    it 'should return 1 penny given 1 cent' do 
      change_maker = ChangeMaker.new
      expect(change_maker.output(1)).to eq([1])
    end

    it 'should return 2 pennies given 2 cent' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(2)).to eq([1,1])
    end

    it 'should return 1 nickel given 5 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(5)).to eq([5])
    end

    it 'should return 1 nickel and 1 penny given 6 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(6)).to eq([5,1])
    end

    it 'should return 1 dime given 10 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(10)).to eq([10])
    end

    it 'should return 1 dime 1 penny given 11 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(11)).to eq([10,1])
    end
  
    it 'should return 1 quarter given 25 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(25)).to eq([25])
    end

    it 'should return 1 quarter 1 dime 1 nickel 1 penny given 41 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(41)).to eq([25,10,5,1])
    end

    it 'should return 4 quarter 1 dime 1 nickel 4 penny given 119 cents' do
      change_maker = ChangeMaker.new
      expect(change_maker.output(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
    



  end










end  
