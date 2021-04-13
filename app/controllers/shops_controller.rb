class ShopsController < ApplicationController
 before_action :find_shop, only: [:show, :edit, :update, :destroy]

def index
@shop = Shop.order(created_at: :desc).search(params[:search])
end

def new

@shop = current_user.shops.build

end

def create
  @shop = current_user.shops.build(shop_params)
  if @shop.save
  redirect_to profile_path(@shop.user.id)

else
  render "new"
  end
end	

def show

end

def edit
	
end

def update
	
end

def destroy
  @shop = Shop.find(params[:id])
  @shop.destroy
  redirect_to profile_path(@shop.user.id)
 end	
	


private

def shop_params
    
  params.require(:shop).permit(:shop_name,:shop_type,:shop_city,:shop_timeing,:delivery,:min_order,:description,:shop_image,business_day:[])
    
end

def find_shop

  @shop = Shop.find(params[:id])

end

 end 















