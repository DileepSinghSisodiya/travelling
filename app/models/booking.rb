class Booking < ApplicationRecord
  belongs_to :hotel
  belongs_to :user
  has_many :room, :through :booking_detail
end
