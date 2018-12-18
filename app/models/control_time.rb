# == Schema Information
#
# Table name: control_times
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  hours             :integer
#  observations      :text
#  registration_date :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class ControlTime < ApplicationRecord
	belongs_to :user
	
	has_many :cost_of_hours_center , inverse_of: :control_time, dependent: :destroy
	accepts_nested_attributes_for :cost_of_hours_center, :allow_destroy => true

end
