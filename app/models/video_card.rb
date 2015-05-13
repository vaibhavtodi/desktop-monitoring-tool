class VideoCard
  include Mongoid::Document

  embedded_in :sys

  	field :video_description,				type: String
	field :video_manufacturer,				type: String
	field :video_memory,					type: String
end