class UsersController < ApplicationController
  
  def new
  	@user = User.new
	end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to restaurants_url, notice: "Signed up! Welcome to SeatYoSelf!"
  	else
  	render "new"
		end
	 end


	 private
	 def user_params
	 	params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
	 end

end
