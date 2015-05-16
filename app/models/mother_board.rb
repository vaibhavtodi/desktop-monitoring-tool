class MotherBoard
  include Mongoid::Document

   	field :manufacturer,					type: String
  	field :model,							type: String
	field :serial,							type: String
	field :processor_slots,					type: Integer
	field :processor_type,					type: String
	field :memory_slots,					type: Integer

	embedded_in :sys_tem,  	:inverse_of => :mother_boards
end
