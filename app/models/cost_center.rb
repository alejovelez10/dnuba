# == Schema Information
#
# Table name: cost_centers
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :text
#  code            :string
#  customer_id     :integer
#  budget          :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  control_time_id :integer

class CostCenter < ApplicationRecord
	belongs_to :user
	has_many :general_spends
	has_many :incomes
	has_many :control_time
end
