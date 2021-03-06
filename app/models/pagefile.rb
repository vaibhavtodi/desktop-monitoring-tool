class Pagefile
  include Mongoid::Document

  	field :file_name,					type: String
  	field :initial_size,				type: String
  	field :max_size,					type: String

	embedded_in :sys_tem,  	:inverse_of => :pagefiles  	
end