class Post < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :users
  has_many :coments
  validates :title, presence: true
  validates :post, presence: true
=======
  belongs_to :user
  has_many :comments
>>>>>>> 224436ee0bc7b63a44da3d97ff8a12ac58aa9658
end
