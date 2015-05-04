require_relative '../calc'

RSpec.describe Calculadora do
  describe "#soma" do  # Usar #name = teste de um método de instância e .name = teste de um método de classe
    it "should returns the sum of the 2 attributes" do
      result = subject.soma(3, 7)
      expect(result).to eql 10
    end
  end
  
  describe "#divide" do
    it "should returns the division of the 2 attributes" do
      result = subject.divide(8, 2)
      expect(result).to eql 4
    end
  end
  
  describe "#multiplica" do
    it "should returns the multiply of the 2 attributes" do
      result = subject.multiplica(3, 7)
      expect(result).to eql 21
    end
  end
  
  describe "#subtrai" do
    it "should returns the subtraction of the 2 attributes" do
      result = subject.subtrai(10, 7)
      expect(result).to eql 3
    end
  end
  
end