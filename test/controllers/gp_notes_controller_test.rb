require "test_helper"

class GpNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gp_note = gp_notes(:one)
  end

  test "should get index" do
    get gp_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_gp_note_url
    assert_response :success
  end

  test "should create gp_note" do
    assert_difference('GpNote.count') do
      post gp_notes_url, params: { gp_note: { Gene_ID: @gp_note.Gene_ID, Note: @gp_note.Note } }
    end

    assert_redirected_to gp_note_url(GpNote.last)
  end

  test "should show gp_note" do
    get gp_note_url(@gp_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_gp_note_url(@gp_note)
    assert_response :success
  end

  test "should update gp_note" do
    patch gp_note_url(@gp_note), params: { gp_note: { Gene_ID: @gp_note.Gene_ID, Note: @gp_note.Note } }
    assert_redirected_to gp_note_url(@gp_note)
  end

  test "should destroy gp_note" do
    assert_difference('GpNote.count', -1) do
      delete gp_note_url(@gp_note)
    end

    assert_redirected_to gp_notes_url
  end
end
