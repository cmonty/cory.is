class SessionsController < ApplicationController
  skip_before_filter :require_login
  
  def new
    
  end
  
  def create
    if user = User.authenticate(params[:session][:email], params[:session][:password])
      session[:current_user_id] = user.id
      redirect_to new_post_url
    else
      redirect_to :action => "new"
    end
  end
  
  def destroy
    session[:current_user_id] = nil
    redirect_to root_url
  end
  
end
