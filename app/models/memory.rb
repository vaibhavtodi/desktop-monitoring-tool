class Memory
  include Mongoid::Document

  embedded_in :hard_disk

   	field :bank,					    type: String
  	field :type,					    type: String
  	field :form_factor,					type: String
  	field :detail,					  	type: String
  	field :capacity,				  	type: Integer
  	field :speed,					    type: Integer
  	field :tag,						    type: String
	field :serial,   					type: String  
	
  embeds_many :modems
  
  
end