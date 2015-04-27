class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	before_save(:capcheck)


	def capcheck

		reservations = Reservation.where({:restaurant_id => restaurant_id, :date => date})
    reservations.map{ |r| r.party}.sum + party <= restaurant.capacity


	end







end
