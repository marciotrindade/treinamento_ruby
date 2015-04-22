class Post < ActiveRecord::Base
  belongs_to :users
  has_many :coments
  validates :title, presence: true
  validates :post, presence: true
end
