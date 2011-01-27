require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should hash password" do
    user = User.new :name => 'Cory',
                    :email => 'hi@cory.is',
                    :new_password => 'unlock2',
                    :new_password_confirmation => 'unlock2'
    assert user.save, "Failed to create user"
    assert user.password.length == 128, "Failed to hash password"
  end
  
  test "should authenticate" do
    assert_instance_of User, User.authenticate('hi@cory.is', 'unlock2'), "Failed to authenticate user"
  end
  
end
