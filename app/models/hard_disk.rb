class HardDisk
  include Mongoid::Document

  embedded_in :bio
  
  	field :hard_drive_caption,					type: String
	field :hard_drive_index,					type: Integer
	field :hard_drive_interface_type,			type: String
	field :hard_drive_manufacturer,				type: String
	field :hard_drive_model,					type: String
	field :hard_drive_serial,					type: String
	field :hard_drive_size,						type: Float
	field :hard_drive_device_id,				type: String
	field :hard_drive_partitions,				type: Integer
	field :hard_drive_status,					type: String
	field :hard_drive_firmware,					type: String
	field :hard_drive_scsi_logical_unit,		type: Integer

  embeds_many :memorys
 
end