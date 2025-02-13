require "application_system_test_case"

class GeneCsinsTest < ApplicationSystemTestCase
  setup do
    @gene_csin = gene_csins(:one)
  end

  test "visiting the index" do
    visit gene_csins_url
    assert_selector "h1", text: "Gene Csins"
  end

  test "creating a Gene csin" do
    visit gene_csins_url
    click_on "New Gene Csin"

    fill_in "Gene id", with: @gene_csin.Gene_ID
    fill_in "Orthogroup genes csin", with: @gene_csin.Orthogroup_genes_Csin
    click_on "Create Gene csin"

    assert_text "Gene csin was successfully created"
    click_on "Back"
  end

  test "updating a Gene csin" do
    visit gene_csins_url
    click_on "Edit", match: :first

    fill_in "Gene id", with: @gene_csin.Gene_ID
    fill_in "Orthogroup genes csin", with: @gene_csin.Orthogroup_genes_Csin
    click_on "Update Gene csin"

    assert_text "Gene csin was successfully updated"
    click_on "Back"
  end

  test "destroying a Gene csin" do
    visit gene_csins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gene csin was successfully destroyed"
  end
end
