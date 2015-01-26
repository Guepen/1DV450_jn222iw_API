require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should not save without email" do
    t = User.new(email: "     ")
    assert_not t.save
  end

end
