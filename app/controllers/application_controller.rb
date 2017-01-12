class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :configure_permitted_parameters, if: :devise_controller?
#  protected
#
#  def configure_permitted_parameters
#    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
#  end
  private
 
    def after_sign_in_path_for(resource)
       [:users]
    end
    
end
