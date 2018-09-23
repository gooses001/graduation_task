class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:department])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:status])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:roll])
    
    devise_parameter_sanitizer.permit(:account_update, keys: [:roll])
  end
#  protect_from_forgery with: :exception
end
