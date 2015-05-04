require_relative '../user'

RSpec.describe User do
  describe "#name=" do  # #name = teste de um método de instância. ## .name = teste de um método de classe
    it "save setted value on instance variable" do
#       user = User.new
#       user.name = "Marcelo"
      subject.name = "Marcelo"

      result = subject.instance_variable_get("@name")
      expect(result).to eql "Marcelo"
    end
  end
  
  describe "#name" do
    it "returns the value for instance variable" do
      user = User.new
      user.instance_variable_set("@name", "Setei a parada")
      
      expect(user.name).to eql "Setei a parada"
    end
  end
  
  describe "#age=" do
    it "save setted value on instance variable" do
      user = User.new
      user.age = 30
      
      result = user.instance_variable_get("@age")
      expect(result).to eql 30
    end
  end
  
  describe "#age" do
    it "returns the value for instance variable" do
      user = User.new
      user.instance_variable_set("@age", 25)
      
      expect(user.age).to eql 25
    end
  end
  
end