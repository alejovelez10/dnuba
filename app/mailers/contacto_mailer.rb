class ContactoMailer < ApplicationMailer

	def contacto(contact) 
		@contact = contact
		mail(to: "alejovelez10@gmail.com", subject: "Alguien nos contacto")
	end



end


