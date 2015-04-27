class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

  def new

  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @review.save
      redirect_to restaurants_path, notice: 'Reservation created!'
    else
      render 'restaurants/show'
    end
  end

  def edit
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private 
  def reservation_params
    params.require(:reservation).permit(:date, :time, :party, :product_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end










