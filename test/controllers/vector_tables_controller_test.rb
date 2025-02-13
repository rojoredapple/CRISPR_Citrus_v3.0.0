require "test_helper"

class VectorTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vector_table = vector_tables(:one)
  end

  test "should get index" do
    get vector_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_vector_table_url
    assert_response :success
  end

  test "should create vector_table" do
    assert_difference('VectorTable.count') do
      post vector_tables_url, params: { vector_table: { Backbone: @vector_table.Backbone, Box_1_Ago_EHA105: @vector_table.Box_1_Ago_EHA105, Cloned: @vector_table.Cloned, Cloned_by: @vector_table.Cloned_by, GFP_positives: @vector_table.GFP_positives, Short_note: @vector_table.Short_note, Transformed_carrizo: @vector_table.Transformed_carrizo, Transformed_valencia: @vector_table.Transformed_valencia, U6_vector: @vector_table.U6_vector, Vector_ID: @vector_table.Vector_ID, Vector_link: @vector_table.Vector_link, tRNA_array: @vector_table.tRNA_array } }
    end

    assert_redirected_to vector_table_url(VectorTable.last)
  end

  test "should show vector_table" do
    get vector_table_url(@vector_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_vector_table_url(@vector_table)
    assert_response :success
  end

  test "should update vector_table" do
    patch vector_table_url(@vector_table), params: { vector_table: { Backbone: @vector_table.Backbone, Box_1_Ago_EHA105: @vector_table.Box_1_Ago_EHA105, Cloned: @vector_table.Cloned, Cloned_by: @vector_table.Cloned_by, GFP_positives: @vector_table.GFP_positives, Short_note: @vector_table.Short_note, Transformed_carrizo: @vector_table.Transformed_carrizo, Transformed_valencia: @vector_table.Transformed_valencia, U6_vector: @vector_table.U6_vector, Vector_ID: @vector_table.Vector_ID, Vector_link: @vector_table.Vector_link, tRNA_array: @vector_table.tRNA_array } }
    assert_redirected_to vector_table_url(@vector_table)
  end

  test "should destroy vector_table" do
    assert_difference('VectorTable.count', -1) do
      delete vector_table_url(@vector_table)
    end

    assert_redirected_to vector_tables_url
  end
end
