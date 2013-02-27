# encoding: utf-8 
class PagesHasArticle < ActiveRecord::Base 

  attr_accessible  :id, :page, :page_id, :article, :article_id

  belongs_to :page 
  belongs_to :article 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :page_id , :page_id , :page_id , :articles_id ] } 

end