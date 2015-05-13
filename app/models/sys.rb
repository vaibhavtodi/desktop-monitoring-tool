class Sys

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  include Mongoid::History::Tracker
  
  field :timestamp,						        type: String
	field :uuid,							          type: String
	field :hostname,						        type: String
	field :man_ip_address,			        type: String
	field :domain,							        type: String
	field :description,					        type: String
	field :type,							          type: String
  field :icon,                        type: String
  field :os_icon,                     type: String
	field :os_group,						        type: String
	field :os_family,						        type: String
	field :os_name,							        type: String
	field :os_version,					        type: String
	field :serial,							        type: String
	field :model,							          type: String
	field :manufacturer,				        type: String
	field :uptime,							        type: String
	field :form_factor,					        type: String
	field :pc_os_bit,						        type: String
	field :pc_memory,						        type: String
	field :pc_num_processor,				    type: String
	field :pc_date_os_installation,			type: String
  field :man_org_id,                  type: String
  field :system_id,                   type: String

 
  embeds_many :logs,                                 cascade_callbacks: true
  embeds_many :routes,                               cascade_callbacks: true
  embeds_many :shares,                               cascade_callbacks: true
  embeds_many :usrs,          store_as: "users",     cascade_callbacks: true
  embeds_many :windows,                              cascade_callbacks: true
  embeds_many :pagefiles,                            cascade_callbacks: true


  #hardware
  embeds_many :bios,                                 cascade_callbacks: true
  embeds_many :hard_disks,                           cascade_callbacks: true
  embeds_many :memorys,                              cascade_callbacks: true
  embeds_many :mntrs,         store_as: "monitors",  cascade_callbacks: true
  embeds_many :modems,                               cascade_callbacks: true
  embeds_many :mother_boards,                        cascade_callbacks: true
  embeds_many :network_cards,                        cascade_callbacks: true
  embeds_many :optical_drives,                       cascade_callbacks: true
  embeds_many :partitions,                           cascade_callbacks: true
  embeds_many :processors,                           cascade_callbacks: true
  embeds_many :sound_cards,                          cascade_callbacks: true
  embeds_many :video_cards,                          cascade_callbacks: true
  
  embeds_many :ipadds,        store_as: "ip_address",        cascade_callbacks: true
  embeds_many :scsi_cntrls,   store_as: "scsi_controllers",  cascade_callbacks: true


  #software
  embeds_many :softwares,                            cascade_callbacks: true
  embeds_many :services,                             cascade_callbacks: true
  embeds_many :sft_keys,  store_as: "software_keys", cascade_callbacks: true
  
  index({hostname: 1, man_ip_address: 1, net_mac_address: 1}, {unique: true})

end