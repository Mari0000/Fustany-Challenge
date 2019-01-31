require 'rails_helper'

# Test suite for the Category model
RSpec.describe Category, type: :model do
  # Association test
  # ensure Category model has a 1:m relationship with the Product model
  it { should have_many(:products).dependent(:destroy) }
  # Validation tests
  # ensure column name is unique
  it { should validate_uniqueness_of(:name) }
end
