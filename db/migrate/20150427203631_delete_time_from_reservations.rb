class DeleteTimeFromReservations < ActiveRecord::Migration
  def change
  	remove_column(:reservations, :time)
  	change_column(:reservations, :date, :datetime)
  end
end
