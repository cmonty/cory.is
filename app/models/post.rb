class Post < ActiveRecord::Base
  
  has_attached_file :photo
  validates_presence_of :title, :body
end
