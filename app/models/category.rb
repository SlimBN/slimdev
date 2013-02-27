# encoding: utf-8 
class Category < ActiveRecord::Base 

  attr_accessible  :id, :name, :description, :parent_category

  has_many :journals, dependent: :destroy 
  has_many :articles, dependent: :destroy 

  validates :name, :presence => true, :uniqueness => true

end