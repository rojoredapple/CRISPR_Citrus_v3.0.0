require "application_system_test_case"

class GeneTablesTest < ApplicationSystemTestCase
  setup do
    @gene_table = gene_tables(:one)
  end

  test "visiting the index" do
    visit gene_tables_url
    assert_selector "h1", text: "Gene Tables"
  end

  test "creating a Gene table" do
    visit gene_tables_url
    click_on "New Gene Table"

    fill_in "Chromosome", with: @gene_table.Chromosome
    fill_in "Description", with: @gene_table.Description
    fill_in "Diagram link", with: @gene_table.Diagram_link
    fill_in "Gene id", with: @gene_table.Gene_ID
    fill_in "Hzau link", with: @gene_table.HZAU_link
    fill_in "Link", with: @gene_table.Link
    fill_in "Live", with: @gene_table.Live
    fill_in "Location", with: @gene_table.Location
    fill_in "Orthogroup", with: @gene_table.Orthogroup
    fill_in "Sequence link", with: @gene_table.Sequence_link
    click_on "Create Gene table"

    assert_text "Gene table was successfully created"
    click_on "Back"
  end

  test "updating a Gene table" do
    visit gene_tables_url
    click_on "Edit", match: :first

    fill_in "Chromosome", with: @gene_table.Chromosome
    fill_in "Description", with: @gene_table.Description
    fill_in "Diagram link", with: @gene_table.Diagram_link
    fill_in "Gene id", with: @gene_table.Gene_ID
    fill_in "Hzau link", with: @gene_table.HZAU_link
    fill_in "Link", with: @gene_table.Link
    fill_in "Live", with: @gene_table.Live
    fill_in "Location", with: @gene_table.Location
    fill_in "Orthogroup", with: @gene_table.Orthogroup
    fill_in "Sequence link", with: @gene_table.Sequence_link
    click_on "Update Gene table"

    assert_text "Gene table was successfully updated"
    click_on "Back"
  end

  test "destroying a Gene table" do
    visit gene_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gene table was successfully destroyed"
  end
end
