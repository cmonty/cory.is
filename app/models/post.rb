class Post < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :category, :tags
  
  has_attached_file :photo
  validates_presence_of :title, :body
end
