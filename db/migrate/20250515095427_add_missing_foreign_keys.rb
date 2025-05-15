class AddMissingForeignKeys < ActiveRecord::Migration[7.1]
  def change
    add_reference :cars, :owners, foreign_key: true
     add_reference :reviews, :cars,foreign_key: true

  end
end
