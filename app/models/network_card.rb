class NetworkCard
  include Mongoid::Document

  embedded_in :mother_board

   	field :net_mac_address,				  	    type: String
  	field :net_manufacturer,				      type: String
  	field :net_model,					            type: String
  	field :net_description,					      type: String
  	field :net_ip_enabled,					      type: Boolean
  	field :net_index,					            type: Integer
  	field :net_connection_id,			        type: String
  	field :net_connection_status,			    type: String
  	field :net_speed,					            type: Integer
  	field :net_adapter_type,			        type: String
  	field :net_dhcp_enabled,				      type: Boolean
  	field :net_dhcp_server,					      type: String
  	field :net_dhcp_lease_obtained,			  type: String
  	field :net_dhcp_lease_expires,			  type: String
	  field :net_dns_host_name,				      type: String
	  field :net_dns_domain,					      type: String
	  field :net_dns_domain_reg_enabled,		type: Boolean
	  field :net_dns_server,					      type: String
    field :net_wins_primary,				      type: String
	  field :net_wins_secondary,				    type: String
	  field :net_wins_lmhosts_enabled,		  type: Boolean

  embeds_many :optical_drives

end