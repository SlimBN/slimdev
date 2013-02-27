class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.text :content
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
