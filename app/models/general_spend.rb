class GeneralSpend < ApplicationRecord
	belongs_to :user
	belongs_to :cost_center
	belongs_to :type_spend
	mount_uploader :file , FileGeneralSpendUploader
end
