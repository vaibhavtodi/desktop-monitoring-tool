class SftKey
  include Mongoid::Document

  embedded_in :system

	field :key_name,		    type: String
	field :key_text,		    type: String
	field :key_release,		    type: String
	field :key_edition,		    type: String
end
