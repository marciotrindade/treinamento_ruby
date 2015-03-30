require_relative '../calculadora'

RSpec.describe Calculadora do
  describe "#calculadora" do
     it "returns of soma value" do   
       result = subject.soma(5, 3)
       expect(result).to eql 8
     end
    
    it "returns of divide value" do   
      result = subject.divide(12, 3)
      expect(result).to eql 4
    end   
    
        it "returns of divide value" do   
      result = subject.divide(12, 0)
      expect(result).to eql 1
    end  
    
    it "returns of multiplica value" do   
       result = subject.multiplica(5, 3)
       expect(result).to eql 15
    end   
    
    it "returns of subtrai value" do   
       result = subject.subtrai(5, 3)
       expect(result).to eql 2
    end    
  end
end
