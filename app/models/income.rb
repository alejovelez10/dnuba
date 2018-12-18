# == Schema Information
#
# Table name: incomes
#
#  id             :integer          not null, primary key
#  description    :text
#  type_income    :string
#  user_id        :integer
#  value          :integer
#  income_date    :date
#  cost_center_id :integer
#  file           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Income < ApplicationRecord
	belongs_to :user
	belongs_to :cost_center
	mount_uploader :file , FileIncomeUploader

end
