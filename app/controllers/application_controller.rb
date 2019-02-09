class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:age,:sex,:job,:address,:email,:password,:password_confirmation])
  end

  def after_sign_in_path_for(resource)
   case resource
    when User
    user_path(resource)
  end
  end
end
Refile.secret_key = 'f11ee1f54898112486ebd1ae5df6ad4a0876582bfd21a0334d10655dbfe231f6e57cd7adde22f90881baa779fbf85637538843e195d6c4621c527c7a9055ba24'