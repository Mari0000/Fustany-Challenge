require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before do
    assign(:categories, create_list(:category,3))
  end

  it 'renders a list of categories' do
    render
  end
end
