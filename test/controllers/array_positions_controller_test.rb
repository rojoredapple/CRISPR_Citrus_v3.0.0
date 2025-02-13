require "test_helper"

class ArrayPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @array_position = array_positions(:one)
  end

  test "should get index" do
    get array_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_array_position_url
    assert_response :success
  end

  test "should create array_position" do
    assert_difference('ArrayPosition.count') do
      post array_positions_url, params: { array_position: { Array_ID: @array_position.Array_ID, sgRNA_ID: @array_position.sgRNA_ID, tRNA_position: @array_position.tRNA_position } }
    end

    assert_redirected_to array_position_url(ArrayPosition.last)
  end

  test "should show array_position" do
    get array_position_url(@array_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_array_position_url(@array_position)
    assert_response :success
  end

  test "should update array_position" do
    patch array_position_url(@array_position), params: { array_position: { Array_ID: @array_position.Array_ID, sgRNA_ID: @array_position.sgRNA_ID, tRNA_position: @array_position.tRNA_position } }
    assert_redirected_to array_position_url(@array_position)
  end

  test "should destroy array_position" do
    assert_difference('ArrayPosition.count', -1) do
      delete array_position_url(@array_position)
    end

    assert_redirected_to array_positions_url
  end
end
