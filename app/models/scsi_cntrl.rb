class ScsiCntrl
  include Mongoid::Document

  embedded_in :system
  
  	field :name,						type: String
  	field :manufacturer,				type: String
  	field :device_id,					type: String
  	field :type,						type: String
end
