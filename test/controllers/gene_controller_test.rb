require "test_helper"

class GeneControllerTest < ActionDispatch::IntegrationTest
  test "should get genes" do
    get gene_genes_url
    assert_response :success
  end
end
