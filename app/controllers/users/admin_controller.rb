class Users::AdminController < Devise::RegistrationsController
before_action :authenticate_user!

	def index
		@user = User.all
	end

	def new_user
		@user = User.new
		
	end

	def crear_user
		@user = User.create(email: params[:email], password: params[:password], password_confirmation:params[:password_confirmation])
		if @user.save
			redirect_to usuarios_path
		end	
		
	end

	def update_user
      @user = User.find(params[:id])
      if@user.update(email: params[:email], password: params[:password], password_confirmation:params[:password_confirmation])
      redirect_to usuarios_path
    else
        render :edit  
    end	

	end

	def editar_user
		@user = User.find(params[:id])
	end

	def destroy_user
		@user = User.find(params[:id])
		if @user.destroy
		 	redirect_to usuarios_path
		end
		
			
	end

	private

  	def set_user
    	@user = User.find(params[:id]) 
 	end
    


end


