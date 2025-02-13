require "test_helper"

class PlantTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_table = plant_tables(:one)
  end

  test "should get index" do
    get plant_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_table_url
    assert_response :success
  end

  test "should create plant_table" do
    assert_difference('PlantTable.count') do
      post plant_tables_url, params: { plant_table: { Genotyping_summary: @plant_table.Genotyping_summary, Link: @plant_table.Link, Live: @plant_table.Live, Phenotyping_image: @plant_table.Phenotyping_image, Phenotyping_text: @plant_table.Phenotyping_text, Plant_ID: @plant_table.Plant_ID, Short_note: @plant_table.Short_note, Species: @plant_table.Species, Vector: @plant_table.Vector, additional_field: @plant_table.additional_field, extra_field: @plant_table.extra_field } }
    end

    assert_redirected_to plant_table_url(PlantTable.last)
  end

  test "should show plant_table" do
    get plant_table_url(@plant_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_table_url(@plant_table)
    assert_response :success
  end

  test "should update plant_table" do
    patch plant_table_url(@plant_table), params: { plant_table: { Genotyping_summary: @plant_table.Genotyping_summary, Link: @plant_table.Link, Live: @plant_table.Live, Phenotyping_image: @plant_table.Phenotyping_image, Phenotyping_text: @plant_table.Phenotyping_text, Plant_ID: @plant_table.Plant_ID, Short_note: @plant_table.Short_note, Species: @plant_table.Species, Vector: @plant_table.Vector, additional_field: @plant_table.additional_field, extra_field: @plant_table.extra_field } }
    assert_redirected_to plant_table_url(@plant_table)
  end

  test "should destroy plant_table" do
    assert_difference('PlantTable.count', -1) do
      delete plant_table_url(@plant_table)
    end

    assert_redirected_to plant_tables_url
  end
end
