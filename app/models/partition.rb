class Partition
  include Mongoid::Document

  embedded_in :optical_drive

  	field :hard_drive_index,				  	type: Integer

  	field :partition_mount_type,				type: String
  	field :partition_mount_point,				type: String
  	field :partition_name,					  	type: String
  	field :partition_size,				  		type: Float
  	field :partition_free_space,				type: Float
  	field :partition_used_space,				type: Float
  	field :partition_format,					  type: String
  	field :partition_caption,					  type: String
  	field :partition_device_id,					type: String
  	field :partition_disk_index,				type: String
  	field :partition_bootable,					type: String
  	field :partition_type,						  type: String
  	field :partition_quotas_supported,	type: String
  	field :partition_quotas_enabled,		type: String
  	field :partition_serial,					  type: String

  embeds_many :processors

end