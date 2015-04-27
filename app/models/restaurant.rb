class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations
	# validates :capacity,  numericality: { only_integer: true }

	def hours
		"#{opening} - #{closing}"
	end
end
