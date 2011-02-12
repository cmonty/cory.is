require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "shouldn't save category without title" do
    category = Category.new
    assert !category.save, "Created category without title"
  end
  
  test "should create category" do 
    category = Category.new :title => 'Developer'
    
    assert category.save, "Failed to create category"
  end
  
end
