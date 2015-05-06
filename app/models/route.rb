class Route
  include Mongoid::Document

  embedded_in :system

	field :destination,		    type: String
	field :mask,			    type: String
	field :metric,			    type: Integer
	field :next_hop,		    type: String
	field :protocol,		    type: String
	field :type,			    type: String
end