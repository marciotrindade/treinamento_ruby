class User
  attr_accessor :name, :age

  def falar
    puts "Ruby muito S2"
  end
end

class Attendent < User
  attr_accessor :permissions
end

module SocialNetwork
  def post
    #...
  end
end

module Mimimi
  def reclamardaDilma
    # mimimi
  end

  module ClassMethods
    def vou_pra_miami
      puts "OIA"
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end

class Twitter
  include SocialNetwork
  include Mimimi
end

class Facebook
  include SocialNetwork
  include Mimimi
end
















