require "test_helper"

class ApplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apples_index_url
    assert_response :success
  end
end
