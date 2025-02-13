require "test_helper"

class GenotypingTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genotyping_table = genotyping_tables(:one)
  end

  test "should get index" do
    get genotyping_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_genotyping_table_url
    assert_response :success
  end

  test "should create genotyping_table" do
    assert_difference('GenotypingTable.count') do
      post genotyping_tables_url, params: { genotyping_table: { Disruption_efficiency: @genotyping_table.Disruption_efficiency, Editing_efficiency: @genotyping_table.Editing_efficiency, Gene_ID: @genotyping_table.Gene_ID, Genotyping_image: @genotyping_table.Genotyping_image, Plant_ID: @genotyping_table.Plant_ID, sgRNA_ID: @genotyping_table.sgRNA_ID } }
    end

    assert_redirected_to genotyping_table_url(GenotypingTable.last)
  end

  test "should show genotyping_table" do
    get genotyping_table_url(@genotyping_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_genotyping_table_url(@genotyping_table)
    assert_response :success
  end

  test "should update genotyping_table" do
    patch genotyping_table_url(@genotyping_table), params: { genotyping_table: { Disruption_efficiency: @genotyping_table.Disruption_efficiency, Editing_efficiency: @genotyping_table.Editing_efficiency, Gene_ID: @genotyping_table.Gene_ID, Genotyping_image: @genotyping_table.Genotyping_image, Plant_ID: @genotyping_table.Plant_ID, sgRNA_ID: @genotyping_table.sgRNA_ID } }
    assert_redirected_to genotyping_table_url(@genotyping_table)
  end

  test "should destroy genotyping_table" do
    assert_difference('GenotypingTable.count', -1) do
      delete genotyping_table_url(@genotyping_table)
    end

    assert_redirected_to genotyping_tables_url
  end
end
