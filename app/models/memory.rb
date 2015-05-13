class Memory
  include Mongoid::Document

  embedded_in :sys

   	field :bank,					      type: String
  	field :type,					      type: String
  	field :form_factor,					type: String
  	field :detail,					  	type: String
  	field :capacity,				  	type: String
  	field :speed,					      type: String
  	field :tag,						      type: String
	  field :serial,   					  type: String  
end