class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, default: 0.0
      t.integer :quantity, default: 0
      t.decimal :discount, default: 0.0
      t.references :category, index: true

      t.timestamps
    end
  end
end
