require 'test_helper'

class CatBreedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cat_breed_index_url
    assert_response :success
  end

  test "should get show" do
    get cat_breed_show_url
    assert_response :success
  end

end
