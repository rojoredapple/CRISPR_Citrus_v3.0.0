require "application_system_test_case"

class GeneAthalsTest < ApplicationSystemTestCase
  setup do
    @gene_athal = gene_athals(:one)
  end

  test "visiting the index" do
    visit gene_athals_url
    assert_selector "h1", text: "Gene Athals"
  end

  test "creating a Gene athal" do
    visit gene_athals_url
    click_on "New Gene Athal"

    fill_in "Gene id", with: @gene_athal.Gene_ID
    fill_in "Orthogroup genes athal", with: @gene_athal.Orthogroup_genes_Athal
    click_on "Create Gene athal"

    assert_text "Gene athal was successfully created"
    click_on "Back"
  end

  test "updating a Gene athal" do
    visit gene_athals_url
    click_on "Edit", match: :first

    fill_in "Gene id", with: @gene_athal.Gene_ID
    fill_in "Orthogroup genes athal", with: @gene_athal.Orthogroup_genes_Athal
    click_on "Update Gene athal"

    assert_text "Gene athal was successfully updated"
    click_on "Back"
  end

  test "destroying a Gene athal" do
    visit gene_athals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gene athal was successfully destroyed"
  end
end
