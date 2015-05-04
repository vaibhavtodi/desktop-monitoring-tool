class AuditInfoController < ApplicationController

	layout "auditInfo"

	before_action :authenticate_user!

  def index
  end

  def info
  end

end
