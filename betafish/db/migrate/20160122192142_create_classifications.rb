class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.references :genre
      t.references :story

      t.timestamps null: false
    end
  end
end
