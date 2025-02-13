require "test_helper"

class GeneCsinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gene_csin = gene_csins(:one)
  end

  test "should get index" do
    get gene_csins_url
    assert_response :success
  end

  test "should get new" do
    get new_gene_csin_url
    assert_response :success
  end

  test "should create gene_csin" do
    assert_difference('GeneCsin.count') do
      post gene_csins_url, params: { gene_csin: { Gene_ID: @gene_csin.Gene_ID, Orthogroup_genes_Csin: @gene_csin.Orthogroup_genes_Csin } }
    end

    assert_redirected_to gene_csin_url(GeneCsin.last)
  end

  test "should show gene_csin" do
    get gene_csin_url(@gene_csin)
    assert_response :success
  end

  test "should get edit" do
    get edit_gene_csin_url(@gene_csin)
    assert_response :success
  end

  test "should update gene_csin" do
    patch gene_csin_url(@gene_csin), params: { gene_csin: { Gene_ID: @gene_csin.Gene_ID, Orthogroup_genes_Csin: @gene_csin.Orthogroup_genes_Csin } }
    assert_redirected_to gene_csin_url(@gene_csin)
  end

  test "should destroy gene_csin" do
    assert_difference('GeneCsin.count', -1) do
      delete gene_csin_url(@gene_csin)
    end

    assert_redirected_to gene_csins_url
  end
end
