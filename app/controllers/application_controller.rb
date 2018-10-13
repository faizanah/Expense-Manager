class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource



  def index

  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:invitation_token, :first_name, :last_name,:password, :password_confirmation, :phone, :address])
  end
  private
  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end


end
