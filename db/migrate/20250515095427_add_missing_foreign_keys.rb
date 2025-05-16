class AddMissingForeignKeys < ActiveRecord::Migration[7.1]
  def change
    add_reference :cars, :owner, foreign_key: true
     add_reference :reviews, :car,foreign_key: true

  end
end
