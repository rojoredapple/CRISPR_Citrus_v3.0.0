require "application_system_test_case"

class VectorTablesTest < ApplicationSystemTestCase
  setup do
    @vector_table = vector_tables(:one)
  end

  test "visiting the index" do
    visit vector_tables_url
    assert_selector "h1", text: "Vector Tables"
  end

  test "creating a Vector table" do
    visit vector_tables_url
    click_on "New Vector Table"

    fill_in "Backbone", with: @vector_table.Backbone
    fill_in "Box 1 ago eha105", with: @vector_table.Box_1_Ago_EHA105
    fill_in "Cloned", with: @vector_table.Cloned
    fill_in "Cloned by", with: @vector_table.Cloned_by
    fill_in "Gfp positives", with: @vector_table.GFP_positives
    fill_in "Short note", with: @vector_table.Short_note
    fill_in "Transformed carrizo", with: @vector_table.Transformed_carrizo
    fill_in "Transformed valencia", with: @vector_table.Transformed_valencia
    fill_in "U6 vector", with: @vector_table.U6_vector
    fill_in "Vector id", with: @vector_table.Vector_ID
    fill_in "Vector link", with: @vector_table.Vector_link
    fill_in "Trna array", with: @vector_table.tRNA_array
    click_on "Create Vector table"

    assert_text "Vector table was successfully created"
    click_on "Back"
  end

  test "updating a Vector table" do
    visit vector_tables_url
    click_on "Edit", match: :first

    fill_in "Backbone", with: @vector_table.Backbone
    fill_in "Box 1 ago eha105", with: @vector_table.Box_1_Ago_EHA105
    fill_in "Cloned", with: @vector_table.Cloned
    fill_in "Cloned by", with: @vector_table.Cloned_by
    fill_in "Gfp positives", with: @vector_table.GFP_positives
    fill_in "Short note", with: @vector_table.Short_note
    fill_in "Transformed carrizo", with: @vector_table.Transformed_carrizo
    fill_in "Transformed valencia", with: @vector_table.Transformed_valencia
    fill_in "U6 vector", with: @vector_table.U6_vector
    fill_in "Vector id", with: @vector_table.Vector_ID
    fill_in "Vector link", with: @vector_table.Vector_link
    fill_in "Trna array", with: @vector_table.tRNA_array
    click_on "Update Vector table"

    assert_text "Vector table was successfully updated"
    click_on "Back"
  end

  test "destroying a Vector table" do
    visit vector_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vector table was successfully destroyed"
  end
end
