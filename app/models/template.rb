# encoding: utf-8 
class Template < ActiveRecord::Base 

  attr_accessible  :id, :name, :content, :user, :user_id

  belongs_to :user 
  has_one :page, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :user_id ] } 
  validates :name, :presence => true, :uniqueness => true
  validates :content, :presence => true

end