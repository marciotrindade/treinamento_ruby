class User < ActiveRecord::Base
  has_many :posts
  validates :name, :email, :age, presence: true
end
