class GeneStudiesController < ApplicationController
  before_action :set_gene_study, only: %i[ show edit update destroy ]

  # GET /gene_studies or /gene_studies.json
  def index
    redirect_to root_path
    @gene_studies = GeneStudy.all
  end

  # GET /gene_studies/1 or /gene_studies/1.json
  def show
    redirect_to root_path
  end

  # GET /gene_studies/new
  def new
    redirect_to root_path
    @gene_study = GeneStudy.new
  end

  # GET /gene_studies/1/edit
  def edit
    redirect_to root_path
  end

  # POST /gene_studies or /gene_studies.json
  def create
    @gene_study = GeneStudy.new(gene_study_params)

    respond_to do |format|
      if @gene_study.save
        format.html { redirect_to @gene_study, notice: "Gene study was successfully created." }
        format.json { render :show, status: :created, location: @gene_study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gene_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gene_studies/1 or /gene_studies/1.json
  def update
    respond_to do |format|
      if @gene_study.update(gene_study_params)
        format.html { redirect_to @gene_study, notice: "Gene study was successfully updated." }
        format.json { render :show, status: :ok, location: @gene_study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gene_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gene_studies/1 or /gene_studies/1.json
  def destroy
    redirect_to root_path
    @gene_study.destroy
    respond_to do |format|
      format.html { redirect_to gene_studies_url, notice: "Gene study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gene_study
      @gene_study = GeneStudy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gene_study_params
      params.require(:gene_study).permit(:Gene_ID, :Study)
    end
end
