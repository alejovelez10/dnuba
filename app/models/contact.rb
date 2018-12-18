# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  subject    :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
	after_create :enviar_mail


	def enviar_mail

		ContactoMailer.contacto(self).deliver
		
	end
	
end
