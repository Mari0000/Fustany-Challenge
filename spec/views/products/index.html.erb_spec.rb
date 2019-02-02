require 'rails_helper'

RSpec.describe 'products/index', type: :view do
  before do
    @category = FactoryBot.create(:category)
    assign(:products, create_list(:product, 10))
    controller.request.path_parameters[:category_id] = @category.id
  end

  it 'renders a list of products' do
    render
  end
end
