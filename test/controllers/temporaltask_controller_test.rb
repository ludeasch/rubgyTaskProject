require 'test_helper'

class TemporaltaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get temporaltask_create_url
    assert_response :success
  end

end
