require_relative '../calculadora'

RSpec.describe Calculadora do
	let(:calc) { Calculadora.new }
	let(:a) { 5 }
	let(:b) { 5 }

	describe "#soma" do
		subject { calc.soma(a,b) }
		
		context "soma numeros inteiros" do
			it "should be 10" do
				# subject.should eq 10
				expect(subject).to eq 10
			end
		end
		
		context "soma numeros com b negativo" do
			let(:b) { -1 }

			it "should be 4" do
				# subject.should eq 4
				expect(subject).to eq 4
			end
		end

		context "soma numero invalido" do
			let(:a) { "a" }
			
			it "when a is a string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				expect { subject }.to raise_error(Exception)
			end

		end

		context "resultado da soma inválido" do
			let(:b) { 3 }	
			it "não deve ser igual a 10" do	
				expect(subject).to_not eql 10
			end
		end
	end

	describe "#divide" do
		subject { calc.divide(a,b) }
		let(:a) { 9 }

		context "dividir numeros inteiros" do
			let(:b) { 3 }

			it "divisão válida" do				
				expect(subject).to eql(3)
			end
		
			it "não retornar o valor exato" do
				expect(subject).to_not eql(5)
			end
		end

		context "divisão por zero" do
			let(:b) { 0 }

			it "divisão por zero" do				
				expect { subject }.to raise_error(Exception)
			end
		end

		context "divisao numero invalido" do
			let(:a) { "a" }
			
			it "when a is a string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				expect { subject }.to raise_error(Exception)
			end
		end

	end

	describe "#multiplica" do
		subject { calc.multiplica(a,b) }
		
		context "multiplicacao numeros inteiros" do
			it "should be 10" do
				# subject.should eq 10
				expect(subject).to eq 25
			end
		end
		
		context "multiplicacao numeros com b negativo" do
			let(:b) { -1 }

			it "should be -5" do
				# subject.should eq -5
				expect(subject).to eq -5
			end
		end

		context "multiplicacao numero invalido" do
			let(:a) { "a" }
			
			it "when a is a string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				expect { subject }.to_not raise_error(Exception)
			end
		end

		context "resultado da multiplicacao inválido" do
			let(:b) { 3 }	
			it "não deve ser igual a 10" do	
				expect(subject).to_not eql 10
			end
		end
	end

	describe "#subtrai" do
		subject { calc.subtrai(a,b) }
		
		context "subtracao numeros inteiros" do
			it "should be 10" do
				# subject.should eq 10
				expect(subject).to eq 0
			end
		end
		
		context "subtracao numeros com b negativo" do
			let(:b) { -1 }

			it "should be 4" do
				# subject.should eq 6
				expect(subject).to eq 6
			end
		end

		context "subtracao numero invalido" do
			let(:a) { "a" }
			
			it "when a is a string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				expect { subject }.to raise_error(Exception)
			end
		end

		context "resultado da subtracao inválido" do
			let(:b) { 3 }	
			it "não deve ser igual a 10" do	
				expect(subject).to_not eql 10
			end
		end
	end

end