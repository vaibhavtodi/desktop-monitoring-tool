class Route
  include Mongoid::Document

  embedded_in :sys_tem

	field :destination,		    type: String
	field :mask,			    type: String
	field :metric,			    type: String
	field :next_hop,		    type: String
	field :protocol,		    type: String
	field :type,			    type: String
end