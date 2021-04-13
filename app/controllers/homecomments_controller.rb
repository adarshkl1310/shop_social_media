class HomecommentsController < ApplicationController
before_action :find_home, only: [:create, :edit, :update, :destroy]
before_action :find_homecomment, only: [:edit, :update, :destroy]

        def index
        end
        

		def create
		
		@homecomment= @home.homecomments.create(homecomment_params)
		@homecomment.user_id = current_user.id
        @homecomment.save
		redirect_to home_path(@home)
		
	end


    def edit
    
    
    end


	

	def show
		

	end
	def update
		 
		if @homecomment.update(homecomment_params)
			redirect_to home_path(@home)
		else
			render 'edit'
		end
			
		
	end

	def destroy
	   
		@homecomment.destroy
		redirect_to home_path(@home)
	end

	private

		def homecomment_params
			params.require(:homecomment).permit(:content)
		end

		def find_home
			@home = Home.find(params[:home_id])
		end

		def find_homecomment
			@homecomment = @home.homecomments.find(params[:id])
		end

end
