class TypeSpend < ApplicationRecord
	belongs_to :user
	has_many :general_spends
end
