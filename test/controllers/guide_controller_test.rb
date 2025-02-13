require "test_helper"

class GuideControllerTest < ActionDispatch::IntegrationTest
  test "should get guides" do
    get guide_guides_url
    assert_response :success
  end
end
