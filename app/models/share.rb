class Share
  include Mongoid::Document

  	field :share_name,					type: String
  	field :share_caption,				type: String
  	field :share_path,					type: String
  	field :share_size,					type: String

  	embedded_in :sys_tem,  	:inverse_of => :shares
end