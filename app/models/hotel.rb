class Hotel < ApplicationRecord
	includes :author, :categories
	has_many :HotelFeaturesMapping
	has_many :features, :through => :HotelFeaturesMapping
end
