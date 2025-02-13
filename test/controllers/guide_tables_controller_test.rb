require "test_helper"

class GuideTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guide_table = guide_tables(:one)
  end

  test "should get index" do
    get guide_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_guide_table_url
    assert_response :success
  end

  test "should create guide_table" do
    assert_difference('GuideTable.count') do
      post guide_tables_url, params: { guide_table: { Orthologs_targeted: @guide_table.Orthologs_targeted, Sequence: @guide_table.Sequence, sgRNA_ID: @guide_table.sgRNA_ID } }
    end

    assert_redirected_to guide_table_url(GuideTable.last)
  end

  test "should show guide_table" do
    get guide_table_url(@guide_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_guide_table_url(@guide_table)
    assert_response :success
  end

  test "should update guide_table" do
    patch guide_table_url(@guide_table), params: { guide_table: { Orthologs_targeted: @guide_table.Orthologs_targeted, Sequence: @guide_table.Sequence, sgRNA_ID: @guide_table.sgRNA_ID } }
    assert_redirected_to guide_table_url(@guide_table)
  end

  test "should destroy guide_table" do
    assert_difference('GuideTable.count', -1) do
      delete guide_table_url(@guide_table)
    end

    assert_redirected_to guide_tables_url
  end
end
