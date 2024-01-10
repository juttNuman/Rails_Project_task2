require "test_helper"

class ArthursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arthurs_index_url
    assert_response :success
  end

  test "should get show" do
    get arthurs_show_url
    assert_response :success
  end
end
