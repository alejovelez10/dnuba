module ApplicationHelper

	def show1(show)

		puts show.name
		puts "holaaaaaaaaaaaaaaaaaaaa"
		
	end

	def get_usuarios
		User.all
	end

	def get_costo_de_centro
		CostCenter.all
	end


def get_date(fecha)
   
if fecha != nil
    ds = fecha.strftime("%w") #Dia de la semana
    y = fecha.strftime("%Y") #Año
    dm = fecha.strftime("%d") #Dia del mes
    m = fecha.strftime("%m") # Mes del Año
    meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julio", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
    dias = {"7" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
    return  meses[m] + " " + dm + " del " + y 
#dias[ds] + ", " +
end 
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

	 	elsif controller_name == "posts" || controller_name == "categories" || controller_name == "bank_images"
	 		@admin = ["", "", "", "", "", "", "active", ""]

	 	elsif controller_name == "control_times"
	 		@admin = ["", "", "", "", "", "", "", "active"]

 	end


 	return @admin
 	
 end


end
