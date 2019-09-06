class ApplicationController < ActionController::Base
  before_action :authenticate_user!
	before_action :deny_access
  before_action :configure_permitted_parameters, if: :devise_controller?
	skip_before_action :deny_access, if: :devise_controller?
	
	
	#user.admin!
	def deny_access
    if not current_user
		  authenticate_user!
	  elsif current_user.member?
			redirect_to root_path, :alert => "Access denied."
		end		
	end
	
	  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:city_id])
  end
	
	
	
end
