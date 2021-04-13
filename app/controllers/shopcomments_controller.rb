class ShopcommentsController < ApplicationController
before_action :find_shop, only: [:create, :edit, :update, :destroy]
before_action :find_shopcomment, only: [:edit, :update, :destroy]

        def index
        end
        

		def create
		
		@shopcomment= @shop.shopcomments.create(shopcomment_params)
		@shopcomment.user_id = current_user.id
        @shopcomment.save
		redirect_to shop_path(@shop)
		
	end


    def edit
    
    
    end


	

	def show
      


	end
	def update
		 
		if @shopcomment.update(shopcomment_params)
			redirect_to shop_path(@shop)
		else
			render 'edit'
		end
			
		
	end

	def destroy
	   
		@shopcomment.destroy
		redirect_to shop_path(@shop)
	end

	private

		def shopcomment_params
			params.require(:shopcomment).permit(:content)
		end

		def find_shop
			@shop = Shop.find(params[:shop_id])
		end

		def find_shopcomment
			@shopcomment = @shop.shopcomments.find(params[:id])
		end

end