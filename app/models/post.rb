class Post < ActiveRecord::Base
  
  has_many :photos
  
  validates_presence_of :title, :body
  
  accepts_nested_attributes_for :photos
  
end
