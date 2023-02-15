class Feature < ApplicationRecord
	has_many :hotelfeaturesmappings
	has_many :hotels, :through => :hotelfeaturesmappings
end
