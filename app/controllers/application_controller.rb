class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

 helper_method :current_user
 helper_method :is_creator


 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys:[:username, :email, :fullname ,:occupation, :age, :gender ])
 end

# def is_creator
# 		current_user.is_creator==true
# 	end



end
