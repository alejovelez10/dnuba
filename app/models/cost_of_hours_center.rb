# == Schema Information
#
# Table name: cost_of_hours_centers
#
#  id              :integer          not null, primary key
#  cost_center_id  :integer
#  user_id         :integer
#  hours           :integer
#  date            :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  control_time_id :integer
#

class CostOfHoursCenter < ApplicationRecord
	 belongs_to :user, optional: true 
	 belongs_to :control_time , inverse_of: :cost_of_hours_center
end
