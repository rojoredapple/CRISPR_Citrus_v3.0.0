class SgrnaTargetsController < ApplicationController
  before_action :set_sgrna_target, only: %i[ show edit update destroy ]

  # GET /sgrna_targets or /sgrna_targets.json
  def index
    @sgrna_targets = SgrnaTarget.all
  end

  # GET /sgrna_targets/1 or /sgrna_targets/1.json
  def show
  end

  # GET /sgrna_targets/new
  def new
    @sgrna_target = SgrnaTarget.new
  end

  # GET /sgrna_targets/1/edit
  def edit
  end

  # POST /sgrna_targets or /sgrna_targets.json
  def create
    @sgrna_target = SgrnaTarget.new(sgrna_target_params)

    respond_to do |format|
      if @sgrna_target.save
        format.html { redirect_to @sgrna_target, notice: "Sgrna target was successfully created." }
        format.json { render :show, status: :created, location: @sgrna_target }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sgrna_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sgrna_targets/1 or /sgrna_targets/1.json
  def update
    respond_to do |format|
      if @sgrna_target.update(sgrna_target_params)
        format.html { redirect_to @sgrna_target, notice: "Sgrna target was successfully updated." }
        format.json { render :show, status: :ok, location: @sgrna_target }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sgrna_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sgrna_targets/1 or /sgrna_targets/1.json
  def destroy
    @sgrna_target.destroy
    respond_to do |format|
      format.html { redirect_to sgrna_targets_url, notice: "Sgrna target was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sgrna_target
      @sgrna_target = SgrnaTarget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sgrna_target_params
      params.require(:sgrna_target).permit(:sgRNA_ID, :Gene_ID, :bp_diff, :pprox, :PAM, :gene_direction, :gene_cutsite, :genome_direction, :genomeStart, :genomeEnd, :target)
    end
end
