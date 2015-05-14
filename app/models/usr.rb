class Usr
  include Mongoid::Document

  embedded_in :sys_tem

   	field :user_name,     					  type: String
  	field :user_caption, 				      type: String
  	field :user_sid,					        type: String
  	field :user_domain,					      type: String
  	field :user_disabled,				      type: String
  	field :user_full_name,				    type: String
	  field :user_status,					      type: String
	  field :user_type,					        type: String
end

