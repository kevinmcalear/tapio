require 'spec_helper'

describe Booking do
  it { should belong_to(:timeslot) }
  it { should belong_to(:customer) }
end
