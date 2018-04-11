class CostCenter < ApplicationRecord
	belongs_to :user
	has_many :general_spends
	has_many :incomes
end
