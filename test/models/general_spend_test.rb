# == Schema Information
#
# Table name: general_spends
#
#  id             :integer          not null, primary key
#  description    :text
#  type_spend_id  :integer
#  user_id        :integer
#  value          :integer
#  spend_date     :date
#  cost_center_id :integer
#  file           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class GeneralSpendTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
