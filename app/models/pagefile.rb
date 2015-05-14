class Pagefile
  include Mongoid::Document

  embedded_in :sys_tem

  	field :file_name,					type: String
  	field :initial_size,				type: String
  	field :max_size,					type: String
  	
end