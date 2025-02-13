require "application_system_test_case"

class ArrayTablesTest < ApplicationSystemTestCase
  setup do
    @array_table = array_tables(:one)
  end

  test "visiting the index" do
    visit array_tables_url
    assert_selector "h1", text: "Array Tables"
  end

  test "creating a Array table" do
    visit array_tables_url
    click_on "New Array Table"

    fill_in "Array id", with: @array_table.Array_ID
    fill_in "Arrived", with: @array_table.Arrived
    fill_in "Batch", with: @array_table.Batch
    fill_in "Length", with: @array_table.Length
    fill_in "Supplier", with: @array_table.Supplier
    click_on "Create Array table"

    assert_text "Array table was successfully created"
    click_on "Back"
  end

  test "updating a Array table" do
    visit array_tables_url
    click_on "Edit", match: :first

    fill_in "Array id", with: @array_table.Array_ID
    fill_in "Arrived", with: @array_table.Arrived
    fill_in "Batch", with: @array_table.Batch
    fill_in "Length", with: @array_table.Length
    fill_in "Supplier", with: @array_table.Supplier
    click_on "Update Array table"

    assert_text "Array table was successfully updated"
    click_on "Back"
  end

  test "destroying a Array table" do
    visit array_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Array table was successfully destroyed"
  end
end
