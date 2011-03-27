class UsersController < ApplicationController
  skip_before_filter :require_login
  
  def new
    @user = User.new
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
