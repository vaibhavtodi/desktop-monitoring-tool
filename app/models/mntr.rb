class Mntr
  include Mongoid::Document

  	field :manufacturer,					  type: String
  	field :device_id,						    type: String
	  field :manufacture_date,				type: String
  	field :model,							      type: String
  	field :serial,							    type: String
  	field :edid_version,					  type: String
  	field :aspect_ratio,					  type: String
  	field :size,							      type: Float

    embedded_in :sys_tem,   :inverse_of => :mntrs
end
