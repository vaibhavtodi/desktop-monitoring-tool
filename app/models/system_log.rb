class SystemLog
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

	field :form_factor,						              type: String
	field :hostname,						              type: String
	field :os_name,							              type: String
	field :os_version,					        	      type: String
	field :serial,							              type: String
	field :model,										  type: String
	field :timestamp,						              type: String
 
 index({hostname: 1, model: 1, serial: 1, timestamp: 1, created_at: 1,}, {unique: false})
end
