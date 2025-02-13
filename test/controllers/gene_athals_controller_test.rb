require "test_helper"

class GeneAthalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gene_athal = gene_athals(:one)
  end

  test "should get index" do
    get gene_athals_url
    assert_response :success
  end

  test "should get new" do
    get new_gene_athal_url
    assert_response :success
  end

  test "should create gene_athal" do
    assert_difference('GeneAthal.count') do
      post gene_athals_url, params: { gene_athal: { Gene_ID: @gene_athal.Gene_ID, Orthogroup_genes_Athal: @gene_athal.Orthogroup_genes_Athal } }
    end

    assert_redirected_to gene_athal_url(GeneAthal.last)
  end

  test "should show gene_athal" do
    get gene_athal_url(@gene_athal)
    assert_response :success
  end

  test "should get edit" do
    get edit_gene_athal_url(@gene_athal)
    assert_response :success
  end

  test "should update gene_athal" do
    patch gene_athal_url(@gene_athal), params: { gene_athal: { Gene_ID: @gene_athal.Gene_ID, Orthogroup_genes_Athal: @gene_athal.Orthogroup_genes_Athal } }
    assert_redirected_to gene_athal_url(@gene_athal)
  end

  test "should destroy gene_athal" do
    assert_difference('GeneAthal.count', -1) do
      delete gene_athal_url(@gene_athal)
    end

    assert_redirected_to gene_athals_url
  end
end
