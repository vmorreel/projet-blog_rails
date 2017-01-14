class RegistrationsController < Devise::RegistrationsController
#  before_filter :configure_permitted_parameters, :only => [:create]
  
  private
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation,:avatar)
    end
    
    def after_sign_up_path_for(resource)
      "/users/sign_in"
    end
 
    def after_inactive_sign_up_path_for(resource)
      "/users/sign_in"
    end
end