class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :time
      t.integer :party
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
