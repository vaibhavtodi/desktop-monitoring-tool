class Log
  include Mongoid::Document

  	field :log_name,					type: String
  	field :log_file_name,				type: String
  	field :log_file_size,				type: String
  	field :log_max_file_size,			type: String
  	field :log_overwrite,				type: String

  	embedded_in :sys_tem,  	:inverse_of => :logs
end