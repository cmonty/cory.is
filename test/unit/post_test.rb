require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "should not create post without body" do
    post = Post.new :title => "Hello World" 
    assert !post.save, "Created post without body"
  end
  
  test "should not create post without title" do
    post = Post.new :body => "Mustache guy"
    assert !post.save, "Created post without title"
  end
  
  test "should create post" do
    post = Post.new :title => "Hello World!",
                    :body => "Mustache guy"
    assert post.save, "Failed to create post"
  end
end
