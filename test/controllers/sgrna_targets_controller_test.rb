require "test_helper"

class SgrnaTargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sgrna_target = sgrna_targets(:one)
  end

  test "should get index" do
    get sgrna_targets_url
    assert_response :success
  end

  test "should get new" do
    get new_sgrna_target_url
    assert_response :success
  end

  test "should create sgrna_target" do
    assert_difference('SgrnaTarget.count') do
      post sgrna_targets_url, params: { sgrna_target: { Gene_ID: @sgrna_target.Gene_ID, PAM: @sgrna_target.PAM, bp_diff: @sgrna_target.bp_diff, gene_cutsite: @sgrna_target.gene_cutsite, gene_direction: @sgrna_target.gene_direction, genomeEnd: @sgrna_target.genomeEnd, genomeStart: @sgrna_target.genomeStart, genome_direction: @sgrna_target.genome_direction, pprox: @sgrna_target.pprox, sgRNA_ID: @sgrna_target.sgRNA_ID, target: @sgrna_target.target } }
    end

    assert_redirected_to sgrna_target_url(SgrnaTarget.last)
  end

  test "should show sgrna_target" do
    get sgrna_target_url(@sgrna_target)
    assert_response :success
  end

  test "should get edit" do
    get edit_sgrna_target_url(@sgrna_target)
    assert_response :success
  end

  test "should update sgrna_target" do
    patch sgrna_target_url(@sgrna_target), params: { sgrna_target: { Gene_ID: @sgrna_target.Gene_ID, PAM: @sgrna_target.PAM, bp_diff: @sgrna_target.bp_diff, gene_cutsite: @sgrna_target.gene_cutsite, gene_direction: @sgrna_target.gene_direction, genomeEnd: @sgrna_target.genomeEnd, genomeStart: @sgrna_target.genomeStart, genome_direction: @sgrna_target.genome_direction, pprox: @sgrna_target.pprox, sgRNA_ID: @sgrna_target.sgRNA_ID, target: @sgrna_target.target } }
    assert_redirected_to sgrna_target_url(@sgrna_target)
  end

  test "should destroy sgrna_target" do
    assert_difference('SgrnaTarget.count', -1) do
      delete sgrna_target_url(@sgrna_target)
    end

    assert_redirected_to sgrna_targets_url
  end
end
