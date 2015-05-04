class Modem
  include Mongoid::Document

  embedded_in :memory
  
  	field :port,							type: String
  	field :model,							type: String
  	field :device_id,						type: String
  	field :type,							type: String
  	field :manufacturer,					type: String

  embeds_many :mntrs, store_as: "monitors"

end
