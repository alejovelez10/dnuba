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

class GeneralSpend < ApplicationRecord

	belongs_to :user
	belongs_to :cost_center
	belongs_to :type_spend
	mount_uploader :file , FileGeneralSpendUploader


    def self.search( search, search1, search2)

        search != "" ? (scope :tipo, -> { where(type_spend_id: search) }) : (scope :tipo, -> { where.not(type_spend_id: nil) })
        search1 != " " && search1 != nil && search1 != "" ?  (scope :fecha_scope, -> { where("DATE(spend_date) = ?",search1)}) : (scope :fecha_scope, -> { where.not(id: nil)})
        search2 != "" ? (scope :description, -> { where("description like '%#{search2.downcase}%' or description like '%#{search2.upcase}%'  or description like '%#{search2.capitalize}%' ") }) : (scope :description, -> { where.not(id: nil) }) 

        tipo.fecha_scope.description

    end
    

end
