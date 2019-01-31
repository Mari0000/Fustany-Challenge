require 'rails_helper'

# Test suite for the Product model
RSpec.describe Product, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:category) }
end
