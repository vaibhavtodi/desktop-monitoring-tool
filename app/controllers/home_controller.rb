class HomeController < ApplicationController

	layout "home" 
	  
  def index
    if user_signed_in?
      redirect_to(:controller => 'audit_info', :action => 'index')
    #else
      #redirect_to(:controller => 'home', :action => 'index')
    end
  end
  
  def contact
  end
  
  def about
  end
  
  def audit
  end

  def dwnld_win
    win_path = File.join(Rails.root, "public", "script")
    send_file(File.join(win_path, "audit_windows.vbs"))
  end

  def dwnld_lin
    win_path = File.join(Rails.root, "public", "script")
    send_file(File.join(win_path, "audit_linux.sh"))
  end

end
