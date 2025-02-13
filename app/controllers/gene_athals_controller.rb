class GeneAthalsController < ApplicationController
  before_action :set_gene_athal, only: %i[ show edit update destroy ]

  # GET /gene_athals or /gene_athals.json
  def index
    redirect_to root_path
    @gene_athals = GeneAthal.all
  end

  # GET /gene_athals/1 or /gene_athals/1.json
  def show
    redirect_to root_path
  end

  # GET /gene_athals/new
  def new
    redirect_to root_path
    @gene_athal = GeneAthal.new
  end

  # GET /gene_athals/1/edit
  def edit
    redirect_to root_path
  end

  # POST /gene_athals or /gene_athals.json
  def create
    redirect_to root_path
    @gene_athal = GeneAthal.new(gene_athal_params)

    respond_to do |format|
      if @gene_athal.save
        format.html { redirect_to @gene_athal, notice: "Gene athal was successfully created." }
        format.json { render :show, status: :created, location: @gene_athal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gene_athal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gene_athals/1 or /gene_athals/1.json
  def update
    redirect_to root_path
    respond_to do |format|
      if @gene_athal.update(gene_athal_params)
        format.html { redirect_to @gene_athal, notice: "Gene athal was successfully updated." }
        format.json { render :show, status: :ok, location: @gene_athal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gene_athal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gene_athals/1 or /gene_athals/1.json
  def destroy
    redirect_to root_path
    @gene_athal.destroy
    respond_to do |format|
      format.html { redirect_to gene_athals_url, notice: "Gene athal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gene_athal
      @gene_athal = GeneAthal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gene_athal_params
      params.require(:gene_athal).permit(:Gene_ID, :Orthogroup_genes_Athal)
    end
end
