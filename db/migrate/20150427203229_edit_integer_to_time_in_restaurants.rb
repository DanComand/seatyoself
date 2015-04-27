class EditIntegerToTimeInRestaurants < ActiveRecord::Migration
  def change
  	change_column(:restaurants, :opening, :time)
  	change_column(:restaurants, :closing, :time)
  end
end
