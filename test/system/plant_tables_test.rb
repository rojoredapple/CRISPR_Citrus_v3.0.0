require "application_system_test_case"

class PlantTablesTest < ApplicationSystemTestCase
  setup do
    @plant_table = plant_tables(:one)
  end

  test "visiting the index" do
    visit plant_tables_url
    assert_selector "h1", text: "Plant Tables"
  end

  test "creating a Plant table" do
    visit plant_tables_url
    click_on "New Plant Table"

    fill_in "Genotyping summary", with: @plant_table.Genotyping_summary
    fill_in "Link", with: @plant_table.Link
    fill_in "Live", with: @plant_table.Live
    fill_in "Phenotyping image", with: @plant_table.Phenotyping_image
    fill_in "Phenotyping text", with: @plant_table.Phenotyping_text
    fill_in "Plant id", with: @plant_table.Plant_ID
    fill_in "Short note", with: @plant_table.Short_note
    fill_in "Species", with: @plant_table.Species
    fill_in "Vector", with: @plant_table.Vector
    fill_in "Additional field", with: @plant_table.additional_field
    fill_in "Extra field", with: @plant_table.extra_field
    click_on "Create Plant table"

    assert_text "Plant table was successfully created"
    click_on "Back"
  end

  test "updating a Plant table" do
    visit plant_tables_url
    click_on "Edit", match: :first

    fill_in "Genotyping summary", with: @plant_table.Genotyping_summary
    fill_in "Link", with: @plant_table.Link
    fill_in "Live", with: @plant_table.Live
    fill_in "Phenotyping image", with: @plant_table.Phenotyping_image
    fill_in "Phenotyping text", with: @plant_table.Phenotyping_text
    fill_in "Plant id", with: @plant_table.Plant_ID
    fill_in "Short note", with: @plant_table.Short_note
    fill_in "Species", with: @plant_table.Species
    fill_in "Vector", with: @plant_table.Vector
    fill_in "Additional field", with: @plant_table.additional_field
    fill_in "Extra field", with: @plant_table.extra_field
    click_on "Update Plant table"

    assert_text "Plant table was successfully updated"
    click_on "Back"
  end

  test "destroying a Plant table" do
    visit plant_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plant table was successfully destroyed"
  end
end
