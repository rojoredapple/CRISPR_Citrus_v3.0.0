require "application_system_test_case"

class GpNotesTest < ApplicationSystemTestCase
  setup do
    @gp_note = gp_notes(:one)
  end

  test "visiting the index" do
    visit gp_notes_url
    assert_selector "h1", text: "Gp Notes"
  end

  test "creating a Gp note" do
    visit gp_notes_url
    click_on "New Gp Note"

    fill_in "Gene id", with: @gp_note.Gene_ID
    fill_in "Note", with: @gp_note.Note
    click_on "Create Gp note"

    assert_text "Gp note was successfully created"
    click_on "Back"
  end

  test "updating a Gp note" do
    visit gp_notes_url
    click_on "Edit", match: :first

    fill_in "Gene id", with: @gp_note.Gene_ID
    fill_in "Note", with: @gp_note.Note
    click_on "Update Gp note"

    assert_text "Gp note was successfully updated"
    click_on "Back"
  end

  test "destroying a Gp note" do
    visit gp_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gp note was successfully destroyed"
  end
end
