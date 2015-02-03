class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:userid]) if session[:userid]
  end

  def require_login
    if current_user.nil? then
      flash[:danger] = 'You must login before you can visit this part of the application.'
      redirect_to root_path
    end
  end
end
