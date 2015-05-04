class VideoCard
  include Mongoid::Document

  embedded_in :sound_card

  	field :video_description,				type: String
	field :video_manufacturer,				type: String
	field :video_memory,					type: Integer

  embeds_many :softwares

end
