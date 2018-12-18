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
#

require 'test_helper'

class CostCenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
