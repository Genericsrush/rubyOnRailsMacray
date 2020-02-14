require 'test_helper'

class DogBreedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dog_breed_index_url
    assert_response :success
  end

  test "should get show" do
    get dog_breed_show_url
    assert_response :success
  end

end
