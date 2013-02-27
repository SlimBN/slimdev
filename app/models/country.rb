# encoding: utf-8 
class Country < ActiveRecord::Base 

  attr_accessible  :id, :name, :continent, :continent_id

  belongs_to :continent 
  has_many :states, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :continent_id ] } 
  validates :name, :presence => true, :uniqueness => true

end