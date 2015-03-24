require_relative '../calculadora'

RSpec.describe Calculadora do

	describe "#soma" do
		it "Test the valid value of a sum" do
					
			result = subject.soma(5,5)
			expect(result).to eql(10)
		end
		
		it "Test the invalid value of a sum" do
					
			result = subject.soma(5,3)
			expect(result).to_not eql(10)
		end
	end
 
	describe "#divide" do
		it "Test the valid value of a division" do
					
			result = subject.divide(9,3)
			expect(result).to eql(3)
		end
		
		it "Test the invalid value of a division" do
					
			result = subject.divide(15,3)
			expect(result).to_not eql(3)
		end
	end
 
	describe "#multiplica" do
		it "Test the valid value of a multiplication" do
					
			result = subject.multiplica(9,3)
			expect(result).to eql(27)
		end
		
		it "Test the invalid value of a multiplication" do
					
			result = subject.multiplica(15,3)
			expect(result).to_not eql(3)
		end
	end
 
	describe "#subtrai" do
		it "Test the valid value of a subtraction" do
					
			result = subject.subtrai(9,3)
			expect(result).to eql(6)
		end
		
		it "Test the invalid value of a subtraction" do
					
			result = subject.subtrai(15,3)
			expect(result).to_not eql(3)
		end
	end

end
