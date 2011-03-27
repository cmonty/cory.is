class UsersController < ApplicationController
  before_filter :only_one_allowed
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
  
  private
  
  def only_one_allowed
    if User.count > 0
      redirect_to login_url
    end
  end
  
end
