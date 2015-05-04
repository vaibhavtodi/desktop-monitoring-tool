class Share
  include Mongoid::Document

  embedded_in :log

  	field :share_name,					type: String
  	field :share_caption,				type: String
  	field :share_path,					type: String
  	field :share_size,					type: Float

  embeds_many :routes
end