class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    if user = User.authenticate(params['sessions'][:email], params['sessions'][:password])
      session[:current_user_id] = user.id
    end
    redirect_to :action => "new"
  end
  
end
