class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    if user = User.authenticate(params[:session][:email], params[:session][:password])
      session[:current_user_id] = user.id
      redirect_to root_url
    end
    redirect_to :action => "new"
  end
  
end
