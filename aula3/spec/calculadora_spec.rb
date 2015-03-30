require_relative '../calculadora'

RSpec.describe Calculadora do 
  describe Calculadora do
    it '#soma' do
      expect(subject.soma 5,2).to eql 7 
    end 
    it '#divide' do
      expect(subject.divide 9,3).to eql 3
    end 
    it '#multiplica' do
      expect(subject.multiplica 4,6).to eql 24
    end 
    it '#subtrai' do
      expect(subject.subtrai 7,3).to eql 4
    end 
    it "div by zero" do
      expect{subject.divide 4,0}.to raise_error(ZeroDivisionError)
    end
  end  
end