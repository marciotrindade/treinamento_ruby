class User
  attr_accessor :name, :age
  
#    attr_reader :name, :age
#    attr_writer :name, :age

  ## Metodo GET
#   def name
#     @name
#   end
 
  ## Metodo SET
#   def name=(name)
#     @name = name
#   end
 
#   def age
#     @age
#   end

#   def age=(age)
#     @age = age
#   end
end

user = User.new

user.name = "Marcelo"
user.age = 34

puts "Name: #{user.name}"
puts "Age: #{user.age}"