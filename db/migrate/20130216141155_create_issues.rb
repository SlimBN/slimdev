class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :number
      t.datetime :published_at
      t.integer :journal_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
