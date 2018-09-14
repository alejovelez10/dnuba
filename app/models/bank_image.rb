class BankImage < ApplicationRecord
	belongs_to :user
	mount_uploader :achivo, BankImagesUploader

end
