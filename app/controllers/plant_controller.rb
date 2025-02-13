class PlantController < ApplicationController
  def plants
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
  end
  
end
