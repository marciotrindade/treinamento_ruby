require_relative '../calculadora'


RSpec.describe Calculadora do
  describe "#soma" do
    it "sum two numbers" do
      result = subject.soma(1,1)
      expect(result).to eql 2
    end
  end
  describe "#divide" do
    it "divide dois numeros" do
      result = subject.divide(2,2)
      expect(result).to eql 1
    end  
  end
  describe "#multiplica" do
    it "multiplica dois numeros" do
      result = subject.multiplica(5,10)
      expect(result).to eql 50
    end  
  end
  describe "#subtrai" do
    it "subtrai dois numeros" do
      result = subject.subtrai(10,2)
      expect(result).to eql 8
    end  
  end
end  
    
