class CreateCuisineTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisine_types do |t|
      t.string :name
      t.string :image_icon
      t.has_many :restaurant

      t.timestamps
    end
  end
end
