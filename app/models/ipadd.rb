class Ipadd
  include Mongoid::Document

  embedded_in :sys_tem

  	field :net_mac_address,						type: String
  	field :net_index,							type: String
  	field :ip_address_v4,						type: String
  	field :ip_address_v6,						type: String
  	field :ip_subnet,							type: String
  	field :ip_address_version,					type: String
end