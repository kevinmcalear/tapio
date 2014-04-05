require 'spec_helper'

describe Review do
  it { should belong_to(:vendor) }
  it { should belong_to(:customer) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:score) }

  it { should validate_presence_of(:customer_id) }
  it { should validate_presence_of(:vendor_id) }
end
