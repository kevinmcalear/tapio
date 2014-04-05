require 'spec_helper'

describe Booking do
  it { should belong_to(:timeslot) }
  it { should belong_to(:customer) }

  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:cost) }

  it { should validate_presence_of(:customer_id) }
  it { should validate_presence_of(:timeslot_id) }
end
