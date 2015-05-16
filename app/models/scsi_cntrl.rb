class ScsiCntrl
  include Mongoid::Document

  	field :name,						type: String
  	field :manufacturer,				type: String
  	field :device_id,					type: String
  	field :type,						type: String

  	embedded_in :sys_tem,  	:inverse_of => :scsi_cntrls
end
