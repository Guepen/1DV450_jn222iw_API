require 'test_helper'

class ApiKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should not save without apikey" do
    a = ApiKey.new
    assert_not a.save
  end
end
