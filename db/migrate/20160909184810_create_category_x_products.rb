class CreateCategoryXProducts < ActiveRecord::Migration
  def change
    create_table :category_x_products do |t|
      t.belongs_to :category, index: true
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :category_x_products, :categories
    add_foreign_key :category_x_products, :products
  end
end
