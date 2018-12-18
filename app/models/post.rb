# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  name        :string
#  body        :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  estado      :boolean
#

class Post < ApplicationRecord

    belongs_to :category
    belongs_to :user

	def self.search (search, search2)
		
		where(["name LIKE ? OR body LIKE ?", "%#{search}%" , "%#{search}%"])
		search2 != "" ? (scope :categoria, -> { where(category_id: search2) }) : (scope :categoria, -> { where.not(id: nil) })

		categoria

	end
	
	
end

