require 'test_helper'

class SimpletaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get simpletask_create_url
    assert_response :success
  end

end
