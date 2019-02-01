require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  before do
    @product = assign(:product, Product.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
