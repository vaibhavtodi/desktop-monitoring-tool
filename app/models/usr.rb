class Usr
  include Mongoid::Document

  embedded_in :system

   	field :user_name,     					  type: String
  	field :user_caption, 				      type: String
  	field :user_sid,					        type: String
  	field :user_domain,					      type: String
  	field :user_disabled,				      type: Boolean
  	field :user_full_name,				    type: String
  	field :user_password_changeable,	type: Boolean
  	field :user_passowrd_expires,		  type: Boolean
  	field :user_password_required,		type: Boolean
	  field :user_status,					      type: String
	  field :user_type,					        type: String
end