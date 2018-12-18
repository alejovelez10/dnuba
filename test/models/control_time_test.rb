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

require 'test_helper'

class ControlTimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
