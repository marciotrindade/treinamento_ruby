class Dog
  def initialize(nome)
    @var = nome
    puts "Iniciando..." + @var
  end
  
  def bark
    puts "AU AU AU AU"
  end
  
  def comparar(outro)
    self == outro
  end
end

dog = Dog.new("teste")
dog.bark
dog.comparar(novodog)
