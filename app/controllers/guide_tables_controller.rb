class GuideTablesController < ApplicationController
  before_action :set_guide_table, only: %i[ show edit update destroy ]

  # GET /guide_tables or /guide_tables.json
  def index
    @guide_tables = GuideTable.all
  end

  # GET /guide_tables/1 or /guide_tables/1.json
  def show
  end

  # GET /guide_tables/new
  def new
    @guide_table = GuideTable.new
  end

  # GET /guide_tables/1/edit
  def edit
  end

  # POST /guide_tables or /guide_tables.json
  def create
    @guide_table = GuideTable.new(guide_table_params)

    respond_to do |format|
      if @guide_table.save
        format.html { redirect_to @guide_table, notice: "Guide table was successfully created." }
        format.json { render :show, status: :created, location: @guide_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guide_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guide_tables/1 or /guide_tables/1.json
  def update
    respond_to do |format|
      if @guide_table.update(guide_table_params)
        format.html { redirect_to @guide_table, notice: "Guide table was successfully updated." }
        format.json { render :show, status: :ok, location: @guide_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guide_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_tables/1 or /guide_tables/1.json
  def destroy
    @guide_table.destroy
    respond_to do |format|
      format.html { redirect_to guide_tables_url, notice: "Guide table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide_table
      @guide_table = GuideTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guide_table_params
      params.require(:guide_table).permit(:sgRNA_ID, :Sequence, :Orthologs_targeted)
    end
end
