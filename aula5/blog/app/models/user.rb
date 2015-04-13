class User < ActiveRecord::Base
  has_many :posts
  
  validates :email, presence: true
  
  def name
    "#{first_name} #{last_name}"
  end
end
