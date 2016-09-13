class ProductsController < ApplicationController

	def index
	  @products = Product.all

	end
	 
	def new
	  @product = Product.new
	  @categories = Category.all
	end

	def create
	  @product = Product.new(product_params)
	  if @product.save
	  	redirect_to products_path
	  else
	  	render :index
	  end
		
	end
    
    def edit
     @product = Product.find(params[:id])
     @categories = Category.all
    end

    def update
     @product = Product.find(params[:id])
     if @product.update(product_params)
       redirect_to products_path
     else
     	render :edit
     end
    	
    end

	private
    def product_params
      params.required(:product).permit(:name, :price, category_ids:[])
    	
    end
end
