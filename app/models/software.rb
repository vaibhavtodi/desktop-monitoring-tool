class Software
  include Mongoid::Document

  embedded_in :sys

	field :software_name,				    	type: String
	field :software_version,				    type: String
	field :software_location,			    	type: String
	field :software_uninstall,			    	type: String
	field :software_install_date,				type: String
	field :software_publisher,			    	type: String
	field :software_install_source,			    type: String
	field :software_system_component,		    type: String
	field :software_url,					    type: String
	field :software_email,				    	type: String
	field :software_comment,			    	type: String
	field :software_code_base,			    	type: String
	field :software_status,				    	type: String
end