require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "image upload" do
    test_image = "/Users/Cory/Sites/cory/test/fixtures/files/test_upload.jpg"
    file = Rack::Test::UploadedFile.new(test_image, "image/jpeg")
    assert_difference('Post.count') do
      post :create, :post => { :photo => file }
    end
  end
end
