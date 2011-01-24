require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should hash password" do
    user = User.new :name => 'Cory',
                    :email => 'hi@cory.is',
                    :new_password => 'unlock2',
                    :new_password_confirmation => 'unlock2'
    assert user.save
    assert user.password.length == 128
  end
end
