class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :last_name
      t.string :name
      t.integer :state_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
