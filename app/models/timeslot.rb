class Timeslot < ActiveRecord::Base
  belongs_to :listing
  has_many :bookings
end
