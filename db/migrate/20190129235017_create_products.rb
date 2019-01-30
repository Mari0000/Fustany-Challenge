class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.decimal :discount
      t.references :category, index: true

      t.timestamps
    end
  end
end
