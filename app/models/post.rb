class Post < ActiveRecord::Base
  
  validates_presence_of :title, :body
  
  #accepts_nested_attributes_for :photos
  
end
