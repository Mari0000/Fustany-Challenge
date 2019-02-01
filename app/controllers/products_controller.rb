class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_product, only: %i[show edit update destroy add_to_favourite remove_from_favourite]
  before_action :set_category, only: %i[create index show new edit update destroy add_to_favourite remove_from_favourite]

  # GET /products
  # GET /products.json
  def index
    @products = @category.products
  end

  # GET /products/1
  # GET /products/1.json
  def show; end

  def add_to_favourite
    @product.change_status(true)
    respond_to do |format|
      if @product.save
        format.html { redirect_to favourits_path, notice: 'Product was successfully added to favourits.' }
        format.json { render :add_to_favourite, status: :created, location: category_product_path(@category, @product) }
      else
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove_from_favourite
    @product.change_status(false)
    respond_to do |format|
      if @product.save
        format.html { redirect_to favourits_path, notice: 'Product was successfully removed from favourits.' }
        format.json { render :remove_from_favourite, status: :created, location: category_product_path(@category, @product) }
      else
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit; end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.category = @category

    respond_to do |format|
      if @product.save
        format.html { redirect_to category_product_path(@product.category, @product), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: category_product_path(@category, @product) }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to category_product_path(@product.category, @product), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to category_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:id, :name, :price, :quantity, :discount, :category_id)
  end
end
