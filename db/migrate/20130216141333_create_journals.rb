class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :category_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
