class AuditInfoController < ApplicationController

    layout "auditInfo"

    before_action :authenticate_user!

  def index
    @sys = SysTem.all
  end

  def system_log
    @sys_log = SystemLog.all    
  end

  def os
  end

  def add_device
  end

  def discovery
  end
end
