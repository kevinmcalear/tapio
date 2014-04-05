require 'spec_helper'

describe Review do
  it { should belong_to(:vendor) }
  it { should belong_to(:customer) }
end
