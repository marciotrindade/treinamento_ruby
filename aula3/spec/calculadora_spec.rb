require_relative '../calculadora'

RSpec.describe Calculadora do 
  describe '#soma' do
    it 'sum two numbers' do
      expect(subject.soma 5,2).to eql 7 
    end 
  end

  describe '#divide' do
    it 'division of two numbers ' do
      expect(subject.divide 9,3).to eql 3
    end 

    it 'division of two numbers and divisor equal zero' do
      expect{subject.divide 4,0}.to raise_error(ZeroDivisionError)
    end
  end

  describe '#multiplica' do
    it 'multiplication of two numbers' do
      expect(subject.multiplica 4,6).to eql 24
    end 
  end

  describe '#subtrai' do
    it 'subtraction of two numbers' do
      expect(subject.subtrai 7,3).to eql 4
    end 
  end

end