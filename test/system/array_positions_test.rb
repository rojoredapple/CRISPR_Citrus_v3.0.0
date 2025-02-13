require "application_system_test_case"

class ArrayPositionsTest < ApplicationSystemTestCase
  setup do
    @array_position = array_positions(:one)
  end

  test "visiting the index" do
    visit array_positions_url
    assert_selector "h1", text: "Array Positions"
  end

  test "creating a Array position" do
    visit array_positions_url
    click_on "New Array Position"

    fill_in "Array id", with: @array_position.Array_ID
    fill_in "Sgrna id", with: @array_position.sgRNA_ID
    fill_in "Trna position", with: @array_position.tRNA_position
    click_on "Create Array position"

    assert_text "Array position was successfully created"
    click_on "Back"
  end

  test "updating a Array position" do
    visit array_positions_url
    click_on "Edit", match: :first

    fill_in "Array id", with: @array_position.Array_ID
    fill_in "Sgrna id", with: @array_position.sgRNA_ID
    fill_in "Trna position", with: @array_position.tRNA_position
    click_on "Update Array position"

    assert_text "Array position was successfully updated"
    click_on "Back"
  end

  test "destroying a Array position" do
    visit array_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Array position was successfully destroyed"
  end
end
