require_relative '../calculadora'

RSpec.describe Calculadora do
  describe '#soma' do
    let(:resultado) { subject.soma(1,2) }

    it 'deve retornar a soma dos 2 atributos' do
      expect(resultado).to eql(3)
    end
  end
# teste
  describe '#subtrai' do
    let(:resultado) { subject.subtrai(10,8) }
    it 'deve retornar a subtração dos 2 atributos' do
      expect(resultado).to eql(2)
    end
  end

  describe '#mutiplica' do
    let(:resultado) { subject.multiplica(3,5) }
    it 'deve retornar a mutiplicação dos 2 atributos' do
      expect(resultado).to eql(15)
    end
  end

  describe '#divide' do
    let(:resultado) { subject.divide(10,2) }
    it 'deve retornar o resultado' do
      expect(resultado).to eql(5)
    end

    context 'quando divide por zero' do
      let(:resultado) { subject.divide(3,0) }

      it 'deve lança o erro de divisaão por zero' do
        expect{ resultado }.to raise_error(ZeroDivisionError)
      end
    end
  end
end
