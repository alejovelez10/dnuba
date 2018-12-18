# == Schema Information
#
# Table name: bank_images
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  achivo      :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BankImage < ApplicationRecord
	belongs_to :user
	mount_uploader :achivo, BankImagesUploader

end
