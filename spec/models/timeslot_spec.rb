require 'spec_helper'

describe Timeslot do
  it { should belong_to(:listing) }
  it { should have_many(:bookings) }
end
