class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :time
      t.integer :party

      t.timestamps null: false
    end
  end
end
