class SftKey
  include Mongoid::Document

	field :key_name,		    type: String
	field :key_text,		    type: String
	field :key_release,		    type: String
	field :key_edition,		    type: String

	embedded_in :sys_tem,  	:inverse_of => :sft_keys
end
