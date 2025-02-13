require "application_system_test_case"

class GenotypingTablesTest < ApplicationSystemTestCase
  setup do
    @genotyping_table = genotyping_tables(:one)
  end

  test "visiting the index" do
    visit genotyping_tables_url
    assert_selector "h1", text: "Genotyping Tables"
  end

  test "creating a Genotyping table" do
    visit genotyping_tables_url
    click_on "New Genotyping Table"

    fill_in "Disruption efficiency", with: @genotyping_table.Disruption_efficiency
    fill_in "Editing efficiency", with: @genotyping_table.Editing_efficiency
    fill_in "Gene id", with: @genotyping_table.Gene_ID
    fill_in "Genotyping image", with: @genotyping_table.Genotyping_image
    fill_in "Plant id", with: @genotyping_table.Plant_ID
    fill_in "Sgrna id", with: @genotyping_table.sgRNA_ID
    click_on "Create Genotyping table"

    assert_text "Genotyping table was successfully created"
    click_on "Back"
  end

  test "updating a Genotyping table" do
    visit genotyping_tables_url
    click_on "Edit", match: :first

    fill_in "Disruption efficiency", with: @genotyping_table.Disruption_efficiency
    fill_in "Editing efficiency", with: @genotyping_table.Editing_efficiency
    fill_in "Gene id", with: @genotyping_table.Gene_ID
    fill_in "Genotyping image", with: @genotyping_table.Genotyping_image
    fill_in "Plant id", with: @genotyping_table.Plant_ID
    fill_in "Sgrna id", with: @genotyping_table.sgRNA_ID
    click_on "Update Genotyping table"

    assert_text "Genotyping table was successfully updated"
    click_on "Back"
  end

  test "destroying a Genotyping table" do
    visit genotyping_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genotyping table was successfully destroyed"
  end
end
