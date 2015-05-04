class Log
  include Mongoid::Document

  embedded_in :log

  	field :log_name,					type: String
  	field :log_file_name,				type: String
  	field :log_file_size,				type: Float
  	field :log_max_file_size,			type: Float
  	field :log_overwrite,				type: String
  	
  embeds_many :shares
end