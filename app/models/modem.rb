class Modem
  include Mongoid::Document

  	field :port,							type: String
  	field :model,							type: String
  	field :device_id,						type: String
  	field :type,							type: String
  	field :manufacturer,					type: String

  	embedded_in :sys_tem,  	:inverse_of => :modems
end
