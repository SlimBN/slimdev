class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.integer :parent_category
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
