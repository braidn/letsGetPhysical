class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "BOOM, Get ready to be FIT, Just sign in and get ready..."
    else
      render :new
    end
  end
end
