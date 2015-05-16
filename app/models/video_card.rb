class VideoCard
  include Mongoid::Document

  	field :video_description,				type: String
	field :video_manufacturer,				type: String
	field :video_memory,					type: String

	embedded_in :sys_tem,  	:inverse_of => :video_cards
end