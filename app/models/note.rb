class Note
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  field :title, 				type: String
  field :text, 					type: String
  field :starred, 				type: Boolean, default: false

  validates_presence_of :title, :text
  validates_uniqueness_of :title

  index({title: 1, starred: 1}) 

end
