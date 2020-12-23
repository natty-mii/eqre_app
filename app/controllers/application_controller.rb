class ApplicationController < ActionController::Base
  before_action :configure_pemitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resources)
    items_path
  end

  protected
  def configure_pemitted_parameters
    added_attrs = [ :email, :username, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, kyes: added_attrs
  end
end
