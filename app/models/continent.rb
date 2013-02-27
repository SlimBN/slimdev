# encoding: utf-8 
class Continent < ActiveRecord::Base 

  attr_accessible  :id, :name

  has_many :countries, dependent: :destroy 
  has_many :states, dependent: :destroy 

  validates :name, :presence => true, :uniqueness => true

end