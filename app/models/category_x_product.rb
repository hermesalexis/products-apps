# == Schema Information
#
# Table name: category_x_products
#
#  id          :integer          not null, primary key
#  category_id :integer
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryXProduct < ActiveRecord::Base
  belongs_to :category
  belongs_to :product
end
