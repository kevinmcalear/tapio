require 'spec_helper'

describe User do
  before(:each) do
     User.create(
      email: "test@test", 
      password: "test", 
      password_confirmation: "test", 
      user_name: "testies"
    )
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:user_name) }
end
