class SessionsController < ApplicationController
  
  def new
    respond_to do |format|
      format.html { render } 
    end
  end
end
