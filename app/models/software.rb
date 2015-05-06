class Software
  include Mongoid::Document

  embedded_in :system

	field :software_name,				    	type: String
	field :software_version,				    type: String
	field :software_location,			    	type: String
	field :software_install_date,				type: Date
	field :software_publisher,			    	type: String
	field :software_install_source,			    type: String
	field :software_system_component,		    type: String
	field :software_url,					    type: String
end