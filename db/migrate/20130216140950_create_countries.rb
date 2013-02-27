class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :continent_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
