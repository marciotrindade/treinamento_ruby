require_relative '../calculadora'

RSpec.describe Calculadora do
  describe 'soma' do
    it 'Somando 2 valores' do
      result = subject.soma(7, 1)
      expect(result).to eq 8
    end
  end

  describe 'subtrai' do
    it 'Subtrai 1 valor de outro' do
      result = subject.subtrai(3, 7)
      expect(result).to eq -4
    end
  end

  describe 'multiplica' do
    it 'Multiplica 2 valores' do
      result = subject.multiplica(3, 7)
      expect(result).to eq 21
    end
  end

  describe 'divide' do
    it 'divide 1 valor por outro' do
      result = subject.divide(81, 9)
      expect(result).to eq 9
    end
  end
end
