require "test_helper"

class SocietalAcceptanceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get societal_acceptance_index_url
    assert_response :success
  end
end
