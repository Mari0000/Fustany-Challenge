require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  before do
  	@category = FactoryBot.create(:category)
    @product = assign(:product, FactoryBot.build(:product))
    @product.category = @category
    @product.save
    controller.request.path_parameters[:category_id] = @category.id
  end

  it 'renders attributes in <p>' do
    render
  end
end
