require 'test_helper'

class CountryOriginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get country_origin_index_url
    assert_response :success
  end

  test "should get show" do
    get country_origin_show_url
    assert_response :success
  end

end
