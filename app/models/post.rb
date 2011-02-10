class Post < ActiveRecord::Base
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
  
  has_attached_file :photo
  validates_presence_of :title, :body
end
