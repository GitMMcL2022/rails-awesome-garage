class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :fuel
      t.integer :year

      t.timestamps
    end
  end
end
