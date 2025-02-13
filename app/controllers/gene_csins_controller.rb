class GeneCsinsController < ApplicationController
  before_action :set_gene_csin, only: %i[ show edit update destroy ]

  # GET /gene_csins or /gene_csins.json
  def index
    redirect_to root_path
    @gene_csins = GeneCsin.all
  end

  # GET /gene_csins/1 or /gene_csins/1.json
  def show
    redirect_to root_path
  end

  # GET /gene_csins/new
  def new
    redirect_to root_path
    @gene_csin = GeneCsin.new
  end

  # GET /gene_csins/1/edit
  def edit
    redirect_to root_path
  end

  # POST /gene_csins or /gene_csins.json
  def create
    redirect_to root_path
    @gene_csin = GeneCsin.new(gene_csin_params)

    respond_to do |format|
      if @gene_csin.save
        format.html { redirect_to @gene_csin, notice: "Gene csin was successfully created." }
        format.json { render :show, status: :created, location: @gene_csin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gene_csin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gene_csins/1 or /gene_csins/1.json
  def update
    redirect_to root_path
    respond_to do |format|
      if @gene_csin.update(gene_csin_params)
        format.html { redirect_to @gene_csin, notice: "Gene csin was successfully updated." }
        format.json { render :show, status: :ok, location: @gene_csin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gene_csin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gene_csins/1 or /gene_csins/1.json
  def destroy
    redirect_to root_path
    @gene_csin.destroy
    respond_to do |format|
      format.html { redirect_to gene_csins_url, notice: "Gene csin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gene_csin
      @gene_csin = GeneCsin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gene_csin_params
      params.require(:gene_csin).permit(:Gene_ID, :Orthogroup_genes_Csin)
    end
end
