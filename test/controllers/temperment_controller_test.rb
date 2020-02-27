require 'test_helper'

class TempermentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get temperment_index_url
    assert_response :success
  end

  test "should get show" do
    get temperment_show_url
    assert_response :success
  end

end
