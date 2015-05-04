class ScsiCntrl
  include Mongoid::Document

  embedded_in :processor
  
  	field :name,						type: String
  	field :manufacturer,				type: String
  	field :device_id,					type: String
  	field :type,						type: String

  embeds_many :sound_cards

end
