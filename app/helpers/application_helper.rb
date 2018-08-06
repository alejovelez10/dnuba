module ApplicationHelper

	def show1(show)

		puts show.name
		puts "holaaaaaaaaaaaaaaaaaaaa"
		
	end

	def admin_menu

 	@admin = ["", "", "", "", "", "", "", ""]

 	if controller_name == "cost_centers"
 		@admin = ["active", "", "", "", "", "", "", ""]

	 	elsif controller_name == "type_spends"
	 		@admin = ["", "active", "", "", "", "", "", ""]

	 	elsif controller_name == "general_spends"
	 		@admin = ["", "", "active", "", "", "", "", ""]

	 	elsif controller_name == "incomes"
	 		@admin = ["", "", "", "active", "", "", "", ""]

	 	elsif controller_name == "contacts"
	 		@admin = ["", "", "", "", "active", "", "", ""]

	 	elsif controller_name == "admin"
	 		@admin = ["", "", "", "", "", "active", "", ""]

	 	elsif controller_name == "posts"
	 		@admin = ["", "", "", "", "", "", "active", ""]

 	end


 	return @admin
 	
 end


end
