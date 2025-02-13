require "application_system_test_case"

class GuideTablesTest < ApplicationSystemTestCase
  setup do
    @guide_table = guide_tables(:one)
  end

  test "visiting the index" do
    visit guide_tables_url
    assert_selector "h1", text: "Guide Tables"
  end

  test "creating a Guide table" do
    visit guide_tables_url
    click_on "New Guide Table"

    fill_in "Orthologs targeted", with: @guide_table.Orthologs_targeted
    fill_in "Sequence", with: @guide_table.Sequence
    fill_in "Sgrna id", with: @guide_table.sgRNA_ID
    click_on "Create Guide table"

    assert_text "Guide table was successfully created"
    click_on "Back"
  end

  test "updating a Guide table" do
    visit guide_tables_url
    click_on "Edit", match: :first

    fill_in "Orthologs targeted", with: @guide_table.Orthologs_targeted
    fill_in "Sequence", with: @guide_table.Sequence
    fill_in "Sgrna id", with: @guide_table.sgRNA_ID
    click_on "Update Guide table"

    assert_text "Guide table was successfully updated"
    click_on "Back"
  end

  test "destroying a Guide table" do
    visit guide_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guide table was successfully destroyed"
  end
end
