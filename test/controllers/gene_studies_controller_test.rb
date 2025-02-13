require "test_helper"

class GeneStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gene_study = gene_studies(:one)
  end

  test "should get index" do
    get gene_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_gene_study_url
    assert_response :success
  end

  test "should create gene_study" do
    assert_difference('GeneStudy.count') do
      post gene_studies_url, params: { gene_study: { Gene_ID: @gene_study.Gene_ID, Study: @gene_study.Study } }
    end

    assert_redirected_to gene_study_url(GeneStudy.last)
  end

  test "should show gene_study" do
    get gene_study_url(@gene_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_gene_study_url(@gene_study)
    assert_response :success
  end

  test "should update gene_study" do
    patch gene_study_url(@gene_study), params: { gene_study: { Gene_ID: @gene_study.Gene_ID, Study: @gene_study.Study } }
    assert_redirected_to gene_study_url(@gene_study)
  end

  test "should destroy gene_study" do
    assert_difference('GeneStudy.count', -1) do
      delete gene_study_url(@gene_study)
    end

    assert_redirected_to gene_studies_url
  end
end
