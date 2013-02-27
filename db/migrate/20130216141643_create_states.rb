class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.integer :country_id
      t.integer :continent_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
