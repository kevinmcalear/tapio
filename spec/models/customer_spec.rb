require 'spec_helper'

describe Customer do
  before do
     Customer.create(
      email: "test@test", 
      password: "test", 
      password_confirmation: "test", 
      user_name: "testies"
    )
  end

  it { should have_many(:bookings) }
  it { should have_many(:timeslots).through(:bookings) }

  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:user_name) }
end
