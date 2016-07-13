class Office
	include Mongoid::Document
	include Mongoid::Timestamps
	field :name, type: String
	field :address, type: String
end
