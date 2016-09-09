class Product < ActiveRecord::Base
  has_many :category_x_products
  has_many :categories, through: :category_x_products
end
