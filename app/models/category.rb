class Category < ActiveRecord::Base
  has_many :category_x_products
  has_many :products, through: :category_x_products
end
