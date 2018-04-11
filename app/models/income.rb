class Income < ApplicationRecord
	belongs_to :user
	belongs_to :cost_center
	mount_uploader :file , FileIncomeUploader

end
