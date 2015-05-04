class Bio
  include Mongoid::Document

  embedded_in :route

   	field :bios_description,					type: String
	field :bios_manufacturer,					type: String
	field :bios_serial,							type: String
	field :bios_smversion,						type: String
	field :bios_version,						type: String
	field :bios_asset_tag,						type: String
  
  embeds_many :hard_disks
		
end