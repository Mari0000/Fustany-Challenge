require 'rails_helper'

# Test suite for the Product model
RSpec.describe Product, type: :model do
  # Association test
  # ensure a product record belongs to a single category record
  it { is_expected.to belong_to(:category) }
end
