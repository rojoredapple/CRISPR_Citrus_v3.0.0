class GeneTablesController < ApplicationController
  before_action :set_gene_table, only: %i[ show edit update destroy ]

  # GET /gene_tables or /gene_tables.json
  def index
    redirect_to root_path
    @gene_tables = GeneTable.all
  end

  # GET /gene_tables/1 or /gene_tables/1.json
  def show
    @genotyping_tables = GenotypingTable.all
    @gene_tables = GeneTable.all
    @plant_tables = PlantTable.all
    @gene_studies = GeneStudy.all
    @gene_csins = GeneCsin.all
    @gene_athals = GeneAthal.all
  end

  # GET /gene_tables/new
  def new
    redirect_to root_path
    @gene_table = GeneTable.new
  end

  # GET /gene_tables/1/edit
  def edit
    redirect_to root_path
  end

  # POST /gene_tables or /gene_tables.json
  def create
    redirect_to root_path
    @gene_table = GeneTable.new(gene_table_params)

    respond_to do |format|
      if @gene_table.save
        format.html { redirect_to @gene_table, notice: "Gene table was successfully created." }
        format.json { render :show, status: :created, location: @gene_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gene_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gene_tables/1 or /gene_tables/1.json
  def update
    redirect_to root_path
    respond_to do |format|
      if @gene_table.update(gene_table_params)
        format.html { redirect_to @gene_table, notice: "Gene table was successfully updated." }
        format.json { render :show, status: :ok, location: @gene_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gene_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gene_tables/1 or /gene_tables/1.json
  def destroy
    @gene_table.destroy
    respond_to do |format|
      format.html { redirect_to gene_tables_url, notice: "Gene table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gene_table
      @gene_table = GeneTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gene_table_params
      params.require(:gene_table).permit(:Gene_ID, :Description, :Chromosome, :Location, :Orthogroup, :Link, :HZAU_link, :Sequence_link, :Diagram_link, :Live)
    end
end
