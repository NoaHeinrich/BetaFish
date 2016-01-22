class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :reply
      t.references :user

      t.timestamps null: false
    end
  end
end
