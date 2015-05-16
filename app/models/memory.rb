class Memory
  include Mongoid::Document

   	field :bank,					      type: String
  	field :type,					      type: String
  	field :form_factor,					type: String
  	field :detail,					  	type: String
  	field :capacity,				  	type: String
  	field :speed,					      type: String
  	field :tag,						      type: String
	  field :serial,   					  type: String  

    embedded_in :sys_tem,   :inverse_of => :memorys
end