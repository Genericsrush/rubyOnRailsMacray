require 'test_helper'

class DogControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dog_show_url
    assert_response :success
  end

  test "should get index" do
    get dog_index_url
    assert_response :success
  end

end
