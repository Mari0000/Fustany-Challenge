require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before do
    @category = assign(:category, FactoryBot.create(:category))
  end

  it 'renders attributes in <p>' do
    render
  end
end
