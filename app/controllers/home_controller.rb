class HomeController < ApplicationController
  before_filter :require_login, :only => :secret

  def index
    # nothing, pure html baby... for now
  end

  def secret
    # not so, huh
  end
end
