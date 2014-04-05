class Listing < ActiveRecord::Base
  belongs_to :vendor
  has_many :timeslots
end
