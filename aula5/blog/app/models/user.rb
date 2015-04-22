class User < ActiveRecord::Base
  has_many :posts
  validates :first_name, presence: true
  validates :email, presence: true
end
