class Feature < ApplicationRecord
	has_many: hotel_features_mapping
	has_many: hotel, :through => hotel_features_mapping
end
