class Mntr
  include Mongoid::Document

  embedded_in :modem
  
  	field :manufacturer,					type: String
  	field :device_id,						type: String
	field :manufacturer_date,				type: Date
  	field :model,							type: String
  	field :serial,							type: String
  	field :edid_version,					type: String
  	field :aspect_ratio,					type: String
  	field :size,							type: Float
  	
  embeds_many :mother_boards

end