require 'rails_helper'

RSpec.describe 'Products', type: :request do
  describe 'GET /products' do
    it 'works! (now write some real specs)' do
      get category_products_path(Category.first.id)
      expect(response).to have_http_status(200)
    end
  end
end
