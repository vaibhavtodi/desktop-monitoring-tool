class Route
  include Mongoid::Document

  embedded_in :share

	field :destination,		    type: String
	field :mask,			    type: String
	field :metric,			    type: Integer
	field :next_hop,		    type: String
	field :protocol,		    type: String
	field :type,			    type: String

  embeds_many :bios	
end