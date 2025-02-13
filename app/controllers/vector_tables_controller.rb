class VectorTablesController < ApplicationController
  before_action :set_vector_table, only: %i[ show edit update destroy ]

  # GET /vector_tables or /vector_tables.json
  def index
    @vector_tables = VectorTable.all
  end

  # GET /vector_tables/1 or /vector_tables/1.json
  def show
  end

  # GET /vector_tables/new
  def new
    @vector_table = VectorTable.new
  end

  # GET /vector_tables/1/edit
  def edit
  end

  # POST /vector_tables or /vector_tables.json
  def create
    @vector_table = VectorTable.new(vector_table_params)

    respond_to do |format|
      if @vector_table.save
        format.html { redirect_to @vector_table, notice: "Vector table was successfully created." }
        format.json { render :show, status: :created, location: @vector_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vector_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vector_tables/1 or /vector_tables/1.json
  def update
    respond_to do |format|
      if @vector_table.update(vector_table_params)
        format.html { redirect_to @vector_table, notice: "Vector table was successfully updated." }
        format.json { render :show, status: :ok, location: @vector_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vector_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vector_tables/1 or /vector_tables/1.json
  def destroy
    @vector_table.destroy
    respond_to do |format|
      format.html { redirect_to vector_tables_url, notice: "Vector table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vector_table
      @vector_table = VectorTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vector_table_params
      params.require(:vector_table).permit(:Vector_ID, :Backbone, :tRNA_array, :U6_vector, :Short_note, :Vector_link, :Cloned, :Cloned_by, :Box_1_Ago_EHA105, :Transformed_valencia, :Transformed_carrizo, :GFP_positives)
    end
end
