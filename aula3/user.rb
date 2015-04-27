class User
  attr_accessor :name, :age
  
  def falar
    puts "testestes"
end

class Atendente < User
  attr_accessor :permissa
end
  
module RedeSocial
  def post
    #...
  end
end

module Mimimi
  def Rete
    # mimimi
  end
end
   
class Twitter
  include RedeSocial
  include Mimimi
end
    
class Face
  include RedeSocial # metodos de instancia
  exclude Mimimi # metodos de classe
end
      
      
