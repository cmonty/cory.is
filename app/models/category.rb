class Category < ActiveRecord::Base
  
  has_and_belongs_to_many :posts
  
  validates_presence_of :title
  validates_presence_of :type
  
end
