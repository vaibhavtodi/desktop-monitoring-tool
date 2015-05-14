class Share
  include Mongoid::Document

  embedded_in :sys_tem

  	field :share_name,					type: String
  	field :share_caption,				type: String
  	field :share_path,					type: String
  	field :share_size,					type: String
end