class OpticalDrive
  include Mongoid::Document

  embedded_in :network_card

  	field :optical_drive_caption,					type: String
	field :optical_drive_model,						type: String
	field :optical_drive_device_id,					type: String
	field :optical_drive_mount_point,				type: String
	field :optical_drive_serial,					type: String

  embeds_many :partitions

end