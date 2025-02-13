class PlantTablesController < ApplicationController
  before_action :set_plant_table, only: %i[ show edit update destroy ]

  # GET /plant_tables or /plant_tables.json
  def index
    redirect_to root_path
    @plant_tables = PlantTable.all
  end

  # GET /plant_tables/1 or /plant_tables/1.json
  def show
    @plant_notes = PlantNote.all
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
  end

  # GET /plant_tables/new
  def new
    @plant_table = PlantTable.new
  end

  # GET /plant_tables/1/edit
  def edit
    redirect_to root_path
  end

  # POST /plant_tables or /plant_tables.json
  def create
    redirect_to root_path
    @plant_table = PlantTable.new(plant_table_params)

    respond_to do |format|
      if @plant_table.save
        format.html { redirect_to @plant_table, notice: "Plant table was successfully created." }
        format.json { render :show, status: :created, location: @plant_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_tables/1 or /plant_tables/1.json
  def update
    redirect_to root_path
    respond_to do |format|
      if @plant_table.update(plant_table_params)
        format.html { redirect_to @plant_table, notice: "Plant table was successfully updated." }
        format.json { render :show, status: :ok, location: @plant_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_tables/1 or /plant_tables/1.json
  def destroy
    redirect_to root_path
    @plant_table.destroy
    respond_to do |format|
      format.html { redirect_to plant_tables_url, notice: "Plant table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_table
      @plant_table = PlantTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_table_params
      params.require(:plant_table).permit(:Plant_ID, :Species, :Vector, :Link, :Genotyping_summary, :Short_note, :Live, :Phenotyping_text, :Phenotyping_image, :extra_field, :additional_field)
    end
end
