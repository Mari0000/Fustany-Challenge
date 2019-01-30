json.extract! product, :id, :name, :price, :quantity, :discount, :created_at, :updated_at
json.category do 
  json.partial! 'category', category: product.category
end
json.url category_product_url(product.category, product, format: :json)
