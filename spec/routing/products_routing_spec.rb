require 'rails_helper'

RSpec.describe ProductsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'categories/1/products').to route_to('products#index', category_id: '1')
    end

    it 'routes to #new' do
      expect(get: 'categories/1/products/new').to route_to('products#new', category_id: '1')
    end

    it 'routes to #show' do
      expect(get: 'categories/1/products/1').to route_to('products#show', category_id: '1', id: '1')
    end

    it 'routes to #edit' do
      expect(get: 'categories/1/products/1/edit').to route_to('products#edit', category_id: '1', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'categories/1/products').to route_to('products#create', category_id: '1',)
    end

    it 'routes to #update via PUT' do
      expect(put: 'categories/1/products/1').to route_to('products#update', category_id: '1', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'categories/1/products/1').to route_to('products#update', category_id: '1', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'categories/1/products/1').to route_to('products#destroy', category_id: '1', id: '1')
    end
  end
end
