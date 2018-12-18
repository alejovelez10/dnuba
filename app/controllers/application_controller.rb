class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'admin' }

  layout :layout_for_selection


protected

  def layout_for_selection
    if controller_name == 'sessions'  || controller_name == 'passwords'
      'application'
    elsif controller_name == 'registrations'

        if action_name == "new" || action_name == "create"
            'application'
            else
            	'admin'
        end
    elsif controller_name == 'home' 
        'page'

    	else
      'admin'
    end
  end

  protected

  def after_sign_in_path_for(resource)
 
    if user_signed_in?
      cost_centers_path
    else
     inicio_path            
  end 
end

end
