class AuditInfoController < ApplicationController

	layout "auditInfo"

	before_action :authenticate_user!

  def index
    @sys = SysTem.all
  end

  def info
  end

  def os
  end

  def system_log
    @sys_log = SystemLog.all    
  end

end
