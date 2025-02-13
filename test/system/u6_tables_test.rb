require "application_system_test_case"

class U6TablesTest < ApplicationSystemTestCase
  setup do
    @u6_table = u6_tables(:one)
  end

  test "visiting the index" do
    visit u6_tables_url
    assert_selector "h1", text: "U6 Tables"
  end

  test "creating a U6 table" do
    visit u6_tables_url
    click_on "New U6 Table"

    fill_in "Position", with: @u6_table.Position
    fill_in "Vector id", with: @u6_table.Vector_ID
    fill_in "Sgrna id", with: @u6_table.sgRNA_ID
    click_on "Create U6 table"

    assert_text "U6 table was successfully created"
    click_on "Back"
  end

  test "updating a U6 table" do
    visit u6_tables_url
    click_on "Edit", match: :first

    fill_in "Position", with: @u6_table.Position
    fill_in "Vector id", with: @u6_table.Vector_ID
    fill_in "Sgrna id", with: @u6_table.sgRNA_ID
    click_on "Update U6 table"

    assert_text "U6 table was successfully updated"
    click_on "Back"
  end

  test "destroying a U6 table" do
    visit u6_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "U6 table was successfully destroyed"
  end
end
