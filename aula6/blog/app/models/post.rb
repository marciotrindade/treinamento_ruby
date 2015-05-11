class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates_presence_of :title, message: " - titulo deve ser preenchido"
	validates_presence_of :content, message: " - conteúdo deve ser preenchido"

	validates_uniqueness_of :title, message: " - titulo já cadastrado"
	validates_uniqueness_of :content, message: " - conteudo já cadastrado"

	validate :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
  		errors.add(:title, " - primeira letra do titulo deve ser maiúscula") unless title =~ /[A-Z].*/
	end
end
