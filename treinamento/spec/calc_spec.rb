require_relative '../calc'

RSpec.describe Calculadora do
  describe "soma" do  # #name = teste de um método de instância. ## .name = teste de um método de classe
    it "metodo soma" do
      result = subject.soma(3, 7)
      expect(result).to eql 10
    end
  end
  
  describe "divide" do
    it "metodo divide" do
      result = subject.divide(8, 2)
      expect(result).to eql 4
    end
  end
  
  describe "multiplica" do
    it "metodo multiplica" do
      result = subject.multiplica(3, 8)
      expect(result).to eql 24
    end
  end
  
  describe "subtrai" do
    it "metodo subtrai" do
      result = subject.subtrai(10, 7)
      expect(result).to eql 3
    end
  end
  
end