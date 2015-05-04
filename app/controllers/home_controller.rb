class HomeController < ApplicationController

	layout "home" 
	  
  def index

    if user_signed_in?
      redirect_to(:controller => 'audit_info', :action => 'index')
#    else
#      redirect_to(:controller => 'home', :action => 'index')
    end

  end

  def contact
  end

  def about
  end

  def audit
  end
end
