class GuideController < ApplicationController
  def guides
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
    @guide_tables = GuideTable.all
  end
end
