class UsersController < ApplicationController
  
  def new
    
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to new_post_url
    else
      render :action => "new"
    end
  end
  
end
