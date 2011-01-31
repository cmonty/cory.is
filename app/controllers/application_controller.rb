class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section."
      redirect_to new_sessions_url
    end
  end
  
  def logged_in?
    !!current_user
  end
  
  def current_user
    @_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end
end
