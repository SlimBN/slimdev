class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.boolean :is_draft
      t.datetime :published_at
      t.integer :user_id
      t.integer :category_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end

      add_index :articles, :slug, unique: true
  end
end
