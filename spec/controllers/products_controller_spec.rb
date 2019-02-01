require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe ProductsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Product. As you add validations to Product, be sure to
  # adjust the attributes here as well.
  let!(:products) { create_list(:product, 10) }
  let(:product_id) { products.first.id }
  
  let(:valid_attributes) do
    products.first
  end

  let(:invalid_attributes) do
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProductsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  before(:each) do 
      @category = FactoryBot.create(:category)
      @product1 = FactoryBot.build(:product)
      @product1.category = @category
      @product1.save
      @product2 = FactoryBot.build(:product)
      @product2.category = @category
      @product2.save
  end 

  describe 'GET #index' do
    it 'returns a success response' do
      valid_attributes
      get :index, params: { category_id: @category.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      product = @product1
      get :show, params: { category_id: @category.id, id: product.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {category_id: @category.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      product = @product1
      get :edit, params: {category_id: @category.id, id: product.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Product' do
        expect do
          post :create, params: {category_id: @category.id, product: {name: Faker::Name.unique.name} }, session: valid_session
        end.to change(Product, :count).by(1)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {category_id: @category.id, product: {} }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { name: Faker::Name.unique.name , price: Faker::Commerce.price(5..1000.0, false) }
      end

      it 'updates the requested product' do
        put :update, params: {category_id: @category.id, id: @product1.to_param, product: new_attributes }, session: valid_session
        @product1.reload
        expect(response).to be_successful
      end

      it 'redirects to the product' do
        put :update, params: {category_id: @category.id, id: @product1.to_param, product: valid_attributes }, session: valid_session
        expect(response).to redirect_to(product)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, params: {category_id: @category.id, id: @product1.to_param, product: invalid_attributes }, session: valid_session
        expect(response).not_to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested product' do
      product = @product1
      expect do
        delete :destroy, params: {category_id: @category.id, id: product.to_param }, session: valid_session
      end.to change(Product, :count).by(-1)
    end

    it 'redirects to the products list' do
      product = @product1
      delete :destroy, params: {category_id: @category.id, id: product.to_param }, session: valid_session
      expect(response).to redirect_to(category_products_url(@category))
    end
  end
end
