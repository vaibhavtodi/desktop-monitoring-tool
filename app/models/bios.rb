class Bios
  include Mongoid::Document

  embedded_in :system

  	field :bios_description,					type: String
  	field :bios_manufacturer,					type: String
  	field :bios_serial,							type: String
  	field :bios_smversion,						type: String
  	field :bios_version,						type: String
end