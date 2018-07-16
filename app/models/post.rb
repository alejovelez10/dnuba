class Post < ApplicationRecord

    belongs_to :category
    belongs_to :user

	def self.search (search)
		where(["name LIKE ? OR body LIKE ?", "%#{search}%" , "%#{search}%"])
	end
	
	
end

