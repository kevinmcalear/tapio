require 'spec_helper'

describe Timeslot do
  it { should belong_to(:listing) }
  it { should have_many(:bookings) }

  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:stop_time) }
  it { should validate_presence_of(:booked) }

  it { should validate_presence_of(:listing_id) }
end
