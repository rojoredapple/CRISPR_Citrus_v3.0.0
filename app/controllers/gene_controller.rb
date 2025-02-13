class GeneController < ApplicationController
  def genes
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
  end
end
