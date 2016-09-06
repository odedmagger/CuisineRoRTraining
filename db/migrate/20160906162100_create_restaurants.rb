class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.integer :rating
      t.integer :delivery_time
      t.boolean :has_ten_bis

      t.timestamps
    end
  end
end
