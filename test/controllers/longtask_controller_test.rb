require 'test_helper'

class LongtaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get longtask_create_url
    assert_response :success
  end

end
