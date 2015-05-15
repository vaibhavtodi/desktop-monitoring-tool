class AuditInfoController < ApplicationController

	layout "auditInfo"

	before_action :authenticate_user!

  def index
  end

  def info
  end

  def os
  end

  def system_log
  end

end
