class ProductsController < ApplicationController
	def index
	  @products = Product.all

	end
	 
	def new
	  @product = Product.new
	  @categories = Category.all
	end
end
