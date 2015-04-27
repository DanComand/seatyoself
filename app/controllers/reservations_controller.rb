class ReservationsController < ApplicationController
  before_filter :load_restaurant
  before_filter :ensure_logged_in, only: [:create, :destroy]
	
  def index
    @reservations = Reservation.all 
	end

  def new

    @reservation = Reservation.new

  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurants_path, notice: 'Reservation created!'
    else
      redirect_to restaurant_path(@restaurant), alert: 'Restaurant is at capacity at that time.'
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










