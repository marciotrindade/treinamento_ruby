class Comment < ActiveRecord::Base
	belongs_to :post

	validates_presence_of :name, message: " - nome deve ser preenchido"
	validates_presence_of :email, message: " - e-mail deve ser preenchido"
	validates_presence_of :content, message: " - conteudo deve ser preenchido"

	validates_uniqueness_of :content, message: " - conteudo já cadastrado"

	validate :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
  		errors.add(:name, " - primeira letra do titulo deve ser maiúscula") unless nome =~ /[A-Z].*/
	end	
end
