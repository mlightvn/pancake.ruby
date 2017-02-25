require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get user_post_url
    assert_response :success
  end

end
