class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :price
      t.string :brand
      t.string :model
      t.string :image

      t.timestamps
    end
  end
end
