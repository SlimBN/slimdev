class CreatePagesHasArticles < ActiveRecord::Migration
  def change
    create_table :pages_has_articles do |t|
      t.integer :page_id
      t.integer :articles_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
