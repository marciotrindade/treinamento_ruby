require_relative '../calculadora'

RSpec.describe Calculadora do
	let(:calc) { Calculadora.new }
	let(:a) { 5 }
	let(:b) { 5 }

	describe "#soma" do
		subject { calc.soma(a,b) }
		
		context "soma de numeros inteiros" do

			it "resultado correto de uma soma" do
				# subject.should eq 10
				expect(subject).to eq 10
			end

			it "resultado incorreto de uma soma" do	
				expect(subject).to_not eql 20
			end

		end
		
		context "soma de numeros com b negativo" do
			let(:b) { -1 }

			it "resultado da soma" do
				# subject.should eq 4
				expect(subject).to eq 4
			end
		end

		context "soma com numero invalido" do
			let(:a) { "a" }
			
			it "quando uma variável for string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				expect { subject }.to raise_error(Exception)
			end
		end
	end

	describe "#divide" do
		subject { calc.divide(a,b) }
		let(:a) { 9 }

		context "divisão de numeros inteiros" do
			let(:b) { 3 }

			it "resultado correto de uma divisão" do				
				expect(subject).to eql(3)
			end
		
			it "resultado incorreto de uma divisão" do
				expect(subject).to_not eql(5)
			end
		end

		context "divisão por zero" do
			let(:b) { 0 }

			it "retorna uma exceção" do				
				expect { subject }.to raise_error(Exception)
			end
		end

		context "divisão de numeros com b negativo" do
			let(:b) { -3 }

			it "resultado da divisão" do
				# subject.should eq -3
				expect(subject).to eq -3
			end
		end

		context "divisao com numero invalido" do
			let(:a) { "a" }
			
			it "quando uma variável for string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")				
				expect { subject }.to raise_error(Exception)
			end
		end
	end

	describe "#multiplica" do
		subject { calc.multiplica(a,b) }
		
		context "multiplicacao de numeros inteiros" do

			it "resultado correto de uma divisão" do
				# subject.should eq 25
				expect(subject).to eq 25
			end

			it "resultado incorreto de uma divisão" do	
				expect(subject).to_not eql 10
			end
		end
		
		context "multiplicacao de numeros com b negativo" do
			let(:b) { -1 }

			it "resultado da multiplicação" do
				# subject.should eq -5
				expect(subject).to eq -5
			end
		end

		context "multiplicacao com numero invalido" do
			let(:a) { "a" }
			
			it "quando uma variável for string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				#"a" * "a" == "aa"
				expect { subject }.to_not raise_error(Exception)
			end
		end
	end

	describe "#subtrai" do
		subject { calc.subtrai(a,b) }
		
		context "subtração de numeros inteiros" do

			it "resultado correto de uma divisão" do
				# subject.should eq 0
				expect(subject).to eq 0
			end

			it "resultado incorreto de uma divisão" do	
				expect(subject).to_not eql 10
			end
		end
		
		context "subtração de numeros com b negativo" do
			let(:b) { -1 }

			it "resultado da subtração" do
				# subject.should eq 6
				expect(subject).to eq 6
			end
		end

		context "subtracao com numero invalido" do
			let(:a) { "a" }
			
			it "quando uma variável for string" do
				#expect { subject }.to raise_error(ArgumentError, "Invalid parameters")
				expect { subject }.to raise_error(Exception)
			end
		end
	end
end