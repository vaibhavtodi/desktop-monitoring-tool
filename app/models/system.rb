class System
  
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  include Mongoid::History::Tracker
  
  field :timestamp,						        type: DateTime
	field :uuid,							          type: String
	field :hostname,						        type: String
	field :man_ip_address,			        type: String
	field :domain,							        type: String
	field :description,					        type: String
	field :type,							          type: String
	field :os_group,						        type: String
	field :os_family,						        type: String
	field :os_name,							        type: String
	field :os_version,					        type: String
	field :serial,							        type: String
	field :model,							          type: String
	field :manufacturer,				        type: String
	field :uptime,							        type: Integer
	field :form_factor,					        type: String
	field :pc_os_bit,						        type: Integer
	field :pc_memory,						        type: Float
	field :pc_num_processor,				    type: Integer
	field :pc_date_os_installation,			type: Date

  
  embeds_many :logs
  embeds_many :routes
  embeds_many :shares
  embeds_many :usrs, store_as: "users"
  embeds_many :windows
  
  #hardware
  embeds_many :bios
  embeds_many :hard_disks
  embeds_many :memorys
  embeds_many :mntrs, store_as: "monitors"
  embeds_many :modems
  embeds_many :mother_boards
  embeds_many :network_cards
  embeds_many :optical_drives
  embeds_many :partitions
  embeds_many :processors
  embeds_many :scsi_cntrls, store_as: "scsi_controllers"
  embeds_many :sound_cards
  embeds_many :video_cards  

  #software
  embeds_many :softwares
  embeds_many :services
  embeds_many :sft_keys,  store_as: "software_keys"
  
  index({hostname: 1, man_ip_address: 1, net_mac_address: 1}, {unique: true})

end