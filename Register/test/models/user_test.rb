require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should not save without email" do
    t = User.new(email: "     ")
    assert_not t.save
  end

  test "Removing a user should remove the apikey for that user" do
    assert_difference('ApiKey.count', difference = -1) do
      u = User.find(1)
      u.destroy
    end
  end

end
