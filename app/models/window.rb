class Window
  include Mongoid::Document

  embedded_in :system

  	field :windows_build_number,			        type: Integer
  	field :windows_user_name,				          type: String
  	field :windows_workgroup,					        type: String
  	field :windows_domain_short,			  	    type: String
  	field :windows_domain_controller_address,	type: String
  	field :windows_domain_controller_name,		type: String
  	field :windows_domain_role,				  	    type: String
  	field :windows_part_of_domain,				    type: String
  	field :windows_id_number,				          type: String
  	field :windows_time_caption,			  	    type: String
  	field :windows_time_daylight,			  	    type: String
  	field :windows_boot_device,				  	    type: String
  	field :windows_country_code,			  	    type: String
  	field :windows_language,				          type: String
  	field :windows_registered_user,			      type: String
  	field :windows_service_pack,			  	    type: Integer
	  field :windows_version,					          type: String
	  field :windows_install_directory,		      type: String

  embeds_many :usrs, store_as: "users"
end