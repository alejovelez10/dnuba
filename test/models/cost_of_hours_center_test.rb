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

require 'test_helper'

class CostOfHoursCenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
