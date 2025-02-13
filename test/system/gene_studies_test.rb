require "application_system_test_case"

class GeneStudiesTest < ApplicationSystemTestCase
  setup do
    @gene_study = gene_studies(:one)
  end

  test "visiting the index" do
    visit gene_studies_url
    assert_selector "h1", text: "Gene Studies"
  end

  test "creating a Gene study" do
    visit gene_studies_url
    click_on "New Gene Study"

    fill_in "Gene id", with: @gene_study.Gene_ID
    fill_in "Study", with: @gene_study.Study
    click_on "Create Gene study"

    assert_text "Gene study was successfully created"
    click_on "Back"
  end

  test "updating a Gene study" do
    visit gene_studies_url
    click_on "Edit", match: :first

    fill_in "Gene id", with: @gene_study.Gene_ID
    fill_in "Study", with: @gene_study.Study
    click_on "Update Gene study"

    assert_text "Gene study was successfully updated"
    click_on "Back"
  end

  test "destroying a Gene study" do
    visit gene_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gene study was successfully destroyed"
  end
end
