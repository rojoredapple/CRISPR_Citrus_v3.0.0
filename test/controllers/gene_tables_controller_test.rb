require "test_helper"

class GeneTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gene_table = gene_tables(:one)
  end

  test "should get index" do
    get gene_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_gene_table_url
    assert_response :success
  end

  test "should create gene_table" do
    assert_difference('GeneTable.count') do
      post gene_tables_url, params: { gene_table: { Chromosome: @gene_table.Chromosome, Description: @gene_table.Description, Diagram_link: @gene_table.Diagram_link, Gene_ID: @gene_table.Gene_ID, HZAU_link: @gene_table.HZAU_link, Link: @gene_table.Link, Live: @gene_table.Live, Location: @gene_table.Location, Orthogroup: @gene_table.Orthogroup, Sequence_link: @gene_table.Sequence_link } }
    end

    assert_redirected_to gene_table_url(GeneTable.last)
  end

  test "should show gene_table" do
    get gene_table_url(@gene_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_gene_table_url(@gene_table)
    assert_response :success
  end

  test "should update gene_table" do
    patch gene_table_url(@gene_table), params: { gene_table: { Chromosome: @gene_table.Chromosome, Description: @gene_table.Description, Diagram_link: @gene_table.Diagram_link, Gene_ID: @gene_table.Gene_ID, HZAU_link: @gene_table.HZAU_link, Link: @gene_table.Link, Live: @gene_table.Live, Location: @gene_table.Location, Orthogroup: @gene_table.Orthogroup, Sequence_link: @gene_table.Sequence_link } }
    assert_redirected_to gene_table_url(@gene_table)
  end

  test "should destroy gene_table" do
    assert_difference('GeneTable.count', -1) do
      delete gene_table_url(@gene_table)
    end

    assert_redirected_to gene_tables_url
  end
end
