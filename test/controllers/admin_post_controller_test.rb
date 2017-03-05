require 'test_helper'

class AdminPostControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get admin_post_detail_url
    assert_response :success
  end

end
