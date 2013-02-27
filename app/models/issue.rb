# encoding: utf-8 
class Issue < ActiveRecord::Base 

  attr_accessible  :id, :number, :published_at, :journal, :journal_id

  belongs_to :journal 
  has_many :pages, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :journal_id ] } 
  validates :number, :presence => true

end