class UsersController < ApplicationController
	def index
	#list all the team members
	@users = User.all.order('created_at DESC')

end

def new
	#create a new user Object
	@user = User.new
	
end

def create
	#create a new user Object with params
	@user = User.new(user_params)

	if @user.save
		redirect_to users_path
	end
end

# def show
# 	@user = User.find(params[:id])
# end

private
def user_params
	params.require(:user).permit(:name, :description, :image)
end

end
