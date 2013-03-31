class SessionsController < ApplicationController
  def new
    #needed for create
  end
  
  def create
    user = login(params[:email], params[:password])
    if user
      redirect_back_or_to root_url, :notice => 'You are logged in YAY'
    else
      flash.now.alert = "Username and or Password incorrect, try again"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Successfully logged out"
  end
end
