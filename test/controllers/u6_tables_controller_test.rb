require "test_helper"

class U6TablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @u6_table = u6_tables(:one)
  end

  test "should get index" do
    get u6_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_u6_table_url
    assert_response :success
  end

  test "should create u6_table" do
    assert_difference('U6Table.count') do
      post u6_tables_url, params: { u6_table: { Position: @u6_table.Position, Vector_ID: @u6_table.Vector_ID, sgRNA_ID: @u6_table.sgRNA_ID } }
    end

    assert_redirected_to u6_table_url(U6Table.last)
  end

  test "should show u6_table" do
    get u6_table_url(@u6_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_u6_table_url(@u6_table)
    assert_response :success
  end

  test "should update u6_table" do
    patch u6_table_url(@u6_table), params: { u6_table: { Position: @u6_table.Position, Vector_ID: @u6_table.Vector_ID, sgRNA_ID: @u6_table.sgRNA_ID } }
    assert_redirected_to u6_table_url(@u6_table)
  end

  test "should destroy u6_table" do
    assert_difference('U6Table.count', -1) do
      delete u6_table_url(@u6_table)
    end

    assert_redirected_to u6_tables_url
  end
end
