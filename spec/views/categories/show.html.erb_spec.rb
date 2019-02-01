require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before do
    @category = assign(:category, Category.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
