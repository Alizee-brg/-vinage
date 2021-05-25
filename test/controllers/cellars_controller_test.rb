require 'test_helper'

class CellarsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cellars_show_url
    assert_response :success
  end

end
