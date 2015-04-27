class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  
    @restaurant = Restaurant.find(params[:id])
    if current_user
      @reservation = @restaurant.reservations.build
    end

  end


  def new
  	@restaurant = Restaurant.new
  end

  def create

  	# render :text => "Saving a picture. Name: #{params[:name]}, URL: #{params[:hours]}, Hours: #{params[:url]}"
 
  	   @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

   private
  def restaurant_params
    params.require(:restaurant).permit(:name, :url, :opening, :closing)
  end

  def edit
  end

  def destroy
  end
end
