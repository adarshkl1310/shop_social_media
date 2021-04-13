class ProductsController < ApplicationController
 before_action :find_product, only: [:show, :edit, :update, :destroy]

def index
	
end

def new


end

def create
  @product = current_user.products.build(product_params)
  if @product.save
  redirect_to product_path(@product.user.id)

else
  render "new"
  end
end	


def show
  @product = Product.new
  @user = User.find(params[:id])	
  @shop = Shop.where(params[:id])

 
end

def edit
	
end

def update
	
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to product_path(@product.user.id)
 end	
	
end

private

def product_params
    
  params.require(:product).permit(:product_name,:product_price,:product_image)
    
end

def find_product

  @products = Product.where(params[:id])

end
