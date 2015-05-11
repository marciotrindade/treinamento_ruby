class User < ActiveRecord::Base
	has_many :posts

	validates_presence_of :name, message: " - nome deve ser preenchido"
	validates_presence_of :email, message: " - e-mail deve ser preenchido"
	validates_presence_of :age, message: " - idade deve ser preenchido"

	validates_uniqueness_of :name, message: " - nome já cadastrado"
	validates_uniqueness_of :email, message: " - e-mail já cadastrado"

	validates_numericality_of :age, greater_than: 0, less_than: 100, message: " - idade deve ser um número entre 0 e 100"

	validate :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
  		errors.add(:name, " - primeira letra do nome deve ser maiúscula") unless name =~ /[A-Z].*/
	end
end
