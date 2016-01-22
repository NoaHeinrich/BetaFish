class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.attachment :content
      t.references :user

      t.timestamps null: false
    end
  end
end
