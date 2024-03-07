class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :description, :diet, :profile_picture_url, :location])
  end

  def after_sign_in_path_for(_)
    dashboard_path # your path
  end
end
