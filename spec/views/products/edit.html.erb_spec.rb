require 'rails_helper'

RSpec.describe 'products/edit', type: :view do
  before do
  	@category = FactoryBot.create(:category)
    @product = assign(:product, FactoryBot.create(:product))
    controller.request.path_parameters[:category_id] = @category.id
  end

  it 'renders the edit product form' do
    render

    assert_select 'form[action=?][method=?]', category_product_path(@category, @product), 'post' do
    end
  end
end
