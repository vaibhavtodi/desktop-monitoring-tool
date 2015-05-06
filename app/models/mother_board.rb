class MotherBoard
  include Mongoid::Document

  embedded_in :system

   	field :manufacturer,					type: String
  	field :model,							type: String
	field :serial,							type: String
	field :processor_slots,					type: Integer
	field :processor_type,					type: String
	field :memory_slots,					type: Integer
end
