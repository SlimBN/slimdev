# encoding: utf-8 
class Article < ActiveRecord::Base 

	extend FriendlyId
  	friendly_id :title, use: :slugged

  attr_accessible  :id, :title, :content, :is_draft, :published_at, :user, :user_id, :category, :category_id

  belongs_to :user 
  belongs_to :category 
  has_many :pages_has_articles, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :user_id , :category_id ] } 
  validates :title, :presence => true

end