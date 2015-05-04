class SoundCard
  include Mongoid::Document

  embedded_in :scsi_cntrl

  	field :sound_name,					type: String
  	field :sound_manufacturer,			type: String
  	field :sound_device_id,				type: String

  embeds_many :video_cards

end
