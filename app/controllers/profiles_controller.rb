class ProfilesController < ApplicationController
 before_action :find_profile, only: [:show, :edit, :update, :destroy]

def index
@users = User.includes(:homes,:homecomments)
end

def new

@profile = current_user.profiles.build

end

def create
  @profile = current_user.profiles.build(profile_params)
  if @profile.save
  redirect_to profile_path(@profile.user.id)
  else
  render "new"
  end
end	

def show
  @user = User.find(params[:id])	
  @shop = Shop.where(params[:id])
  @product = Product.where(params[:id])
end

def edit
	
end

def update
	
end

def destroy
  @profile = Profile.find(params[:id])
  @profile.destroy
  redirect_to profile_path(@profile.user.id)
 end	
	
end

private

def profile_params
    
  params.require(:profile).permit(:profile_image,:date_of_birth)
    
end

def find_profile

  @profiles = Profile.where(params[:id])

end