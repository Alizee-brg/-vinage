require 'test_helper'

class BottlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bottles_index_url
    assert_response :success
  end

  test "should get show" do
    get bottles_show_url
    assert_response :success
  end

end
