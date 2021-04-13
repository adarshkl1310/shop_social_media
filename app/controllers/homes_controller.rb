 class HomesController < ApplicationController

before_action :find_home, only: [:show, :edit, :update, :destroy]

def index   
 @homes = Home.order(created_at: :desc).search(params[:search])
 @home = Home.new
 @users = User.all
end


def new
@profile = Profile.all
@users = User.order(created_at: :desc).search(params[:search])
end


def create
    @home = current_user.homes.build(home_params)
    if @home.save
       redirect_to homes_path 
     
  end
end

def show
    
 
    
end


def edit
 	   
end

def update
		
     
	if @home.update(home_params)
			redirect_to home_path
		else
			render 'edit'
		end

end

def destroy
	
	@home.destroy
	redirect_to homes_path
end	

private

def home_params
			
	params.require(:home).permit(:product_name,:homeimage,:description,:market_type)

end

def find_home
    	 
    @home = Home.find(params[:id])
 

   
end


end
