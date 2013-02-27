# encoding: utf-8 
class Journal < ActiveRecord::Base 

  attr_accessible  :id, :name, :description, :user, :user_id, :category, :category_id

  belongs_to :user 
  belongs_to :category 
  has_many :issues, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :user_id , :category_id ] } 
  validates :name, :presence => true

  make_flaggable :follow, :like, :hate

end