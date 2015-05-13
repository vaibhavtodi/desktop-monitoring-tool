class Service
  include Mongoid::Document

  embedded_in :sys

	field :service_description,			    type: String
	field :service_display_name,		    type: String
	field :service_name,				    type: String
	field :service_path_name,			    type: String
	field :service_started,				    type: Boolean
	field :service_start_name,			    type: String
	field :service_start_mode,			    type: String
	field :service_state,		    		type: String
end