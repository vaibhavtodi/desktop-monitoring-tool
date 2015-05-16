class SoundCard
  include Mongoid::Document

  	field :sound_name,					type: String
  	field :sound_manufacturer,			type: String
  	field :sound_device_id,				type: String

  	embedded_in :sys_tem,  	:inverse_of => :sound_cards
end