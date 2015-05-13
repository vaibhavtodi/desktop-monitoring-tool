class ScsiCntrl
  include Mongoid::Document

  embedded_in :sys
  
  	field :name,						type: String
  	field :manufacturer,				type: String
  	field :device_id,					type: String
  	field :type,						type: String
end
