class GenotypingTablesController < ApplicationController
  before_action :set_genotyping_table, only: %i[ show edit update destroy ]

  # GET /genotyping_tables or /genotyping_tables.json
  def index
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
  end

  # GET /genotyping_tables/1 or /genotyping_tables/1.json
  def show
  end

  # GET /genotyping_tables/new
  def new
    redirect_to root_path
    @genotyping_table = GenotypingTable.new
  end

  # GET /genotyping_tables/1/edit
  def edit
    redirect_to root_path
  end

  # POST /genotyping_tables or /genotyping_tables.json
  def create
    redirect_to root_path
    @genotyping_table = GenotypingTable.new(genotyping_table_params)

    respond_to do |format|
      if @genotyping_table.save
        format.html { redirect_to @genotyping_table, notice: "Genotyping table was successfully created." }
        format.json { render :show, status: :created, location: @genotyping_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genotyping_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genotyping_tables/1 or /genotyping_tables/1.json
  def update
    redirect_to root_path
    respond_to do |format|
      if @genotyping_table.update(genotyping_table_params)
        format.html { redirect_to @genotyping_table, notice: "Genotyping table was successfully updated." }
        format.json { render :show, status: :ok, location: @genotyping_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genotyping_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genotyping_tables/1 or /genotyping_tables/1.json
  def destroy
    @genotyping_table.destroy
    respond_to do |format|
      format.html { redirect_to genotyping_tables_url, notice: "Genotyping table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genotyping_table
      @genotyping_table = GenotypingTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genotyping_table_params
      params.require(:genotyping_table).permit(:Plant_ID, :Gene_ID, :sgRNA_ID, :Genotyping_image, :Editing_efficiency, :Disruption_efficiency)
    end
end
