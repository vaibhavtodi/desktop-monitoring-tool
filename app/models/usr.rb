class Usr
  include Mongoid::Document

  embedded_in :sys

   	field :user_name,     					  type: String
  	field :user_caption, 				      type: String
  	field :user_sid,					        type: String
  	field :user_domain,					      type: String
  	field :user_disabled,				      type: String
  	field :user_full_name,				    type: String
  	field :user_password_changeable,	type: String
  	field :user_passowrd_expires,		  type: String
  	field :user_password_required,		type: String
	  field :user_status,					      type: String
	  field :user_type,					        type: String
end

