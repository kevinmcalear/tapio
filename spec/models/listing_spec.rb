require 'spec_helper'

describe Listing do
  it { should belong_to(:vendor) }
  it { should have_many(:timeslots) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:rate) }
  it { should validate_presence_of(:vendor_id) }
end
