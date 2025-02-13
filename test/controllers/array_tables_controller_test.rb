require "test_helper"

class ArrayTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @array_table = array_tables(:one)
  end

  test "should get index" do
    get array_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_array_table_url
    assert_response :success
  end

  test "should create array_table" do
    assert_difference('ArrayTable.count') do
      post array_tables_url, params: { array_table: { Array_ID: @array_table.Array_ID, Arrived: @array_table.Arrived, Batch: @array_table.Batch, Length: @array_table.Length, Supplier: @array_table.Supplier } }
    end

    assert_redirected_to array_table_url(ArrayTable.last)
  end

  test "should show array_table" do
    get array_table_url(@array_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_array_table_url(@array_table)
    assert_response :success
  end

  test "should update array_table" do
    patch array_table_url(@array_table), params: { array_table: { Array_ID: @array_table.Array_ID, Arrived: @array_table.Arrived, Batch: @array_table.Batch, Length: @array_table.Length, Supplier: @array_table.Supplier } }
    assert_redirected_to array_table_url(@array_table)
  end

  test "should destroy array_table" do
    assert_difference('ArrayTable.count', -1) do
      delete array_table_url(@array_table)
    end

    assert_redirected_to array_tables_url
  end
end
