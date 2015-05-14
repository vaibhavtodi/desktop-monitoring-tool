class Log
  include Mongoid::Document

  embedded_in :sys_tem

  	field :log_name,					type: String
  	field :log_file_name,				type: String
  	field :log_file_size,				type: String
  	field :log_max_file_size,			type: String
  	field :log_overwrite,				type: String
end