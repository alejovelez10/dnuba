class Post < ApplicationRecord

    belongs_to :category
    belongs_to :user

	def self.search (search, search2)
		
		where(["name LIKE ? OR body LIKE ?", "%#{search}%" , "%#{search}%"])
		search2 != "" ? (scope :categoria, -> { where(category_id: search2) }) : (scope :categoria, -> { where.not(id: nil) })

		categoria

	end
	
	
end

