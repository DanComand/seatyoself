class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :date
      t.string :time
      t.string :party

      t.timestamps null: false
    end
  end
end
