class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #protected
  #def authenticate_user!
  #  if user_signed_in?
  #    super
  #  else
  #    redirect_to login_path
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
  #  end
  #end
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
