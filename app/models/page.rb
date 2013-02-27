# encoding: utf-8 
class Page < ActiveRecord::Base 

  attr_accessible  :id, :number, :pos1, :pos2, :pos3, :pos4, :pos5, :pos6, :pos7, :pos8, :pos9, :pos10, :pos11, :pos12, :pos13, :pos14, :pos15, :pos16, :issue, :issue_id, :template, :template_id

  belongs_to :issue 
  belongs_to :template 
  has_many :pages_has_articles, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :issue_id , :issue_id , :template_id ] } 
  validates :number, :presence => true, :uniqueness => true

end