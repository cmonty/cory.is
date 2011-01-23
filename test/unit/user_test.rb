require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "valid_password" do
    assert users(:cory).password.length == 128
  end
end
