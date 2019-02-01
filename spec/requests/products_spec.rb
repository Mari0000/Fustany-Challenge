require 'rails_helper'

RSpec.describe 'Products', type: :request do
  let!(:categories) { create_list(:category, 10) }
  let(:category_id) { categories.first.id }
  let(:products) { create_list(:product, 5) }
  
  describe 'GET /products' do
  	before { get "/categories/#{category_id}/products.json" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
