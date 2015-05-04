require_relative '../user'

RSpec.describe User do
  describe '#name' do
    it 'gets the name from an instance variable' do
      result = subject.instance_variable_set('@name', 'Bruno')
      expect(subject.name).to eq('Bruno')
    end
  end

  describe '#name=' do
    it 'sets the name to an instance variable' do
      subject.name = 'Bruno'

      result = subject.instance_variable_get('@name')
      expect(result).to eq('Bruno')
    end
  end

  describe '#age' do
    it 'gets the age from an instance variable' do
      result = subject.instance_variable_set('@age', 24)
      expect(subject.age).to eq(24)
    end
  end

  describe '#age=' do
    it 'sets the age to an instance variable' do
      subject.age = 24

      result = subject.instance_variable_get('@age')
      expect(result).to eq(24)
    end
  end
end
