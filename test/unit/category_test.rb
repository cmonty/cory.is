require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "shouldn't save category without title" do
    category = Category.new :type => 'interest'
    assert !category.save, "Created category without title"
  end
  
  test "shouldn't save category without type" do
    category = Category.new :title => 'Developer'
    assert !category.save, "Created category without type"
  end
  
  test "should create category" do 
    category = Category.new :title => 'Developer',
                            :type => 'job'
    assert category.save, "Failed to create category"
  end
end
