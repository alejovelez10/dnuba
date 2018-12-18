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

require 'test_helper'

class TypeSpendTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
