class AddFavouriteToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :favourite, :boolean, default: false
  end
end
