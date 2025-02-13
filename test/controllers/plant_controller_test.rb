require "test_helper"

class PlantControllerTest < ActionDispatch::IntegrationTest
  test "should get plants" do
    get plant_plants_url
    assert_response :success
  end
end
