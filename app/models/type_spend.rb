# == Schema Information
#
# Table name: type_spends
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  code        :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TypeSpend < ApplicationRecord
	belongs_to :user
	has_many :general_spends
end
