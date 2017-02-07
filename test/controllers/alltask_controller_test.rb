require 'test_helper'

class AlltaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get alltask_create_url
    assert_response :success
  end

end
