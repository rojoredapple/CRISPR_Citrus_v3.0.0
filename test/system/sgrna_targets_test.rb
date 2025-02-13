require "application_system_test_case"

class SgrnaTargetsTest < ApplicationSystemTestCase
  setup do
    @sgrna_target = sgrna_targets(:one)
  end

  test "visiting the index" do
    visit sgrna_targets_url
    assert_selector "h1", text: "Sgrna Targets"
  end

  test "creating a Sgrna target" do
    visit sgrna_targets_url
    click_on "New Sgrna Target"

    fill_in "Gene id", with: @sgrna_target.Gene_ID
    fill_in "Pam", with: @sgrna_target.PAM
    fill_in "Bp diff", with: @sgrna_target.bp_diff
    fill_in "Gene cutsite", with: @sgrna_target.gene_cutsite
    fill_in "Gene direction", with: @sgrna_target.gene_direction
    fill_in "Genomeend", with: @sgrna_target.genomeEnd
    fill_in "Genomestart", with: @sgrna_target.genomeStart
    fill_in "Genome direction", with: @sgrna_target.genome_direction
    fill_in "Pprox", with: @sgrna_target.pprox
    fill_in "Sgrna id", with: @sgrna_target.sgRNA_ID
    fill_in "Target", with: @sgrna_target.target
    click_on "Create Sgrna target"

    assert_text "Sgrna target was successfully created"
    click_on "Back"
  end

  test "updating a Sgrna target" do
    visit sgrna_targets_url
    click_on "Edit", match: :first

    fill_in "Gene id", with: @sgrna_target.Gene_ID
    fill_in "Pam", with: @sgrna_target.PAM
    fill_in "Bp diff", with: @sgrna_target.bp_diff
    fill_in "Gene cutsite", with: @sgrna_target.gene_cutsite
    fill_in "Gene direction", with: @sgrna_target.gene_direction
    fill_in "Genomeend", with: @sgrna_target.genomeEnd
    fill_in "Genomestart", with: @sgrna_target.genomeStart
    fill_in "Genome direction", with: @sgrna_target.genome_direction
    fill_in "Pprox", with: @sgrna_target.pprox
    fill_in "Sgrna id", with: @sgrna_target.sgRNA_ID
    fill_in "Target", with: @sgrna_target.target
    click_on "Update Sgrna target"

    assert_text "Sgrna target was successfully updated"
    click_on "Back"
  end

  test "destroying a Sgrna target" do
    visit sgrna_targets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sgrna target was successfully destroyed"
  end
end
