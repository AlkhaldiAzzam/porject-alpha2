class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
        update_attr = [:password, :password_confirmation, :current_password, :email, :username]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username ,:first_name , :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: update_attr)

    end

end
