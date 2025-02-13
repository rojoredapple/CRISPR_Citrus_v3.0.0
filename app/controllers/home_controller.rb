class HomeController < ApplicationController
  def index
  end
  def search
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search]
      #@results = PlantTable.all.where('"Plant_ID"::TEXT LIKE  :search', search: "%#{@parameter}%")
      @plant = PlantTable.all.where('
        "Plant_ID"::TEXT ILIKE  :search OR 
        "Vector"::TEXT ILIKE  :search OR 
        "Species"::TEXT ILIKE  :search OR
        "Short_note"::TEXT ILIKE  :search 
        ', search: "%#{@parameter}%")

      @gene = GeneTable.all.where('
        "Gene_ID"::TEXT ILIKE  :search OR 
        "Description"::TEXT ILIKE  :search OR 
        "Chromosome"::TEXT ILIKE  :search OR
        "Location"::TEXT ILIKE  :search OR
        "Orthogroup"::TEXT ILIKE  :search 
        ', search: "%#{@parameter}%")
    end  
  end
end
