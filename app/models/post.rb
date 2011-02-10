class Post < ActiveRecord::Base
  has_many :categories
  
  has_attached_file :photo
  validates_presence_of :title, :body
end
