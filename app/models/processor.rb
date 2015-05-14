class Processor
  include Mongoid::Document

  embedded_in :sys_tem

  	field :processor_count,						            type: Integer
  	field :processor_cores,						            type: Integer
  	field :processor_logical,					  	        type: Integer
  	field :processor_socket,						          type: String
  	field :processor_description,					        type: String
  	field :processor_speed,						            type: Integer
  	field :processor_manufacturer,					      type: String
  	field :processor_architecture,					      type: String
  	field :processor_power_management_supported,	type: Boolean
end