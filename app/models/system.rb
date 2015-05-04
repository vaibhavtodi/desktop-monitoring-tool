class System
  
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  include Mongoid::History::Tracker
  
  	field :timestamp,						type: DateTime
	field :uuid,							type: String
	field :hostname,						type: String
	field :man_ip_address,					type: String
	field :domain,							type: String
	field :description,						type: String
	field :type,							type: String
	field :os_group,						type: String
	field :os_family,						type: String
	field :os_name,							type: String
	field :os_version,						type: String
	field :serial,							type: String
	field :model,							type: String
	field :manufacturer,					type: String
	field :uptime,							type: Integer
	field :form_factor,						type: String
	field :pc_os_bit,						type: Integer
	field :pc_memory,						type: Float
	field :pc_num_processor,				type: Integer
	field :pc_date_os_installation,			type: Date

  embeds_many :windows

  index({hostname: 1, man_ip_address: 1, net_mac_address: 1}, {unique: true})

end