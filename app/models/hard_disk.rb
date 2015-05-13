class HardDisk
  include Mongoid::Document

  embedded_in :sys
  
  	field :hard_drive_caption,					type: String
	field :hard_drive_index,					type: String
	field :hard_drive_interface_type,			type: String
	field :hard_drive_manufacturer,				type: String
	field :hard_drive_model,					type: String
	field :hard_drive_serial,					type: String
	field :hard_drive_size,						type: String
	field :hard_drive_device_id,				type: String
	field :hard_drive_partitions,				type: String
	field :hard_drive_status,					type: String
	field :hard_drive_firmware,					type: String
	field :hard_drive_model_family,				type: String
	field :hard_drive_scsi_logical_unit,		type: String
end