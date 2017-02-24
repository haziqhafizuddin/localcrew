class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email)
    end
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :user_bio, :location])
    devise_parameter_sanitizer.permit(:account_update) do |account|
      account.permit(:email, :password, :password_confirmation, :current_password,
      :username, :first_name, :last_name, :user_bio, :location,
      experiences_attributes: [:id, :start_date, :end_date, :title, :website, :description, :user_id])
    end
  end
end
