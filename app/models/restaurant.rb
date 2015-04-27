class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations
	def hours
		"#{opening} - #{closing}"
	end
end
