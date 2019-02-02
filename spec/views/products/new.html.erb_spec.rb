require 'rails_helper'

RSpec.describe 'products/new', type: :view do
  before do
  	@category = FactoryBot.create(:category)
    assign(:product, FactoryBot.build(:product))
    controller.request.path_parameters[:category_id] = @category.id
  end

  it 'renders new product form' do
    render

    assert_select 'form[action=?][method=?]', category_products_path(@category.id), 'post' do
    end
  end
end
