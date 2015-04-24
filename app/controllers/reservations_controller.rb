class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

  def new

  end

  def create
  end

  def edit
  end

  def destroy
  end
end
