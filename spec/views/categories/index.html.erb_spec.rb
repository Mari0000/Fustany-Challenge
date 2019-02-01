require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before do
    assign(:categories, [
             Category.create!,
             Category.create!
           ])
  end

  it 'renders a list of categories' do
    render
  end
end
