class Hotel < ApplicationRecord
	has_many: hotel_features_mapping
	has_many: feature, :through => hotel_features_mapping
end
