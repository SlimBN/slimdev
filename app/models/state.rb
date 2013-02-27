# encoding: utf-8 
class State < ActiveRecord::Base 

  attr_accessible  :id, :name, :country, :country_id, :continent, :continent_id

  has_many :users, dependent: :destroy 
  belongs_to :country 
  belongs_to :continent 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :country_id , :continent_id ] } 
  validates :name, :presence => true, :uniqueness => true

end