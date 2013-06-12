class ApplicationController < ActionController::Base
  protect_from_forgery

  # method called by sorcery when someone is attempting
  # to access a resource that in which they neeed to be
  # logged in for
  def not_authenticated
    redirect_to root_url, :alert => "You first need to login to access that"
  end
end
