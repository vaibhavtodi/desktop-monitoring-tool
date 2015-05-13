class Modem
  include Mongoid::Document

  embedded_in :sys
  
  	field :port,							type: String
  	field :model,							type: String
  	field :device_id,						type: String
  	field :type,							type: String
  	field :manufacturer,					type: String
end
