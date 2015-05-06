class SoundCard
  include Mongoid::Document

  embedded_in :system

  	field :sound_name,					type: String
  	field :sound_manufacturer,			type: String
  	field :sound_device_id,				type: String
end
