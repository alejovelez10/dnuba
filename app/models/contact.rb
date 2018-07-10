class Contact < ApplicationRecord
	after_create :enviar_mail


	def enviar_mail

		ContactoMailer.contacto(self).deliver
		
	end
	
end
