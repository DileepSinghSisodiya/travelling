class Room < ApplicationRecord
	has_many: booking_details
	has_many: booking, :through booking_details
end
