class User < ActiveRecord::Base
  has_many :posts
<<<<<<< HEAD
  validates :first_name, presence: true
  validates :email, presence: true
=======
>>>>>>> 224436ee0bc7b63a44da3d97ff8a12ac58aa9658
end
