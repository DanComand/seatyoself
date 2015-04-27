class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.integer :opening
      t.integer :closing

      t.timestamps null: false
    end
  end
end
