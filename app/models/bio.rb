class Bio
  include Mongoid::Document

  	field :bios_description,					type: String
  	field :bios_manufacturer,					type: String
  	field :bios_serial,							type: String
  	field :bios_smversion,						type: String
  	field :bios_version,						type: String
  	field :bios_asset_tag,						type: String

	embedded_in :sys_tem,  	:inverse_of => :bios
end
