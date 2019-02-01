require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Category, type: :model do
  # ensure category model has a 1:m relationship with the product model
  it { is_expected.to have_many(:products).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { is_expected.to validate_uniquness_of(:name) }
end
