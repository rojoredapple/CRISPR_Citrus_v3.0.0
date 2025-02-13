class ArrayTablesController < ApplicationController
  before_action :set_array_table, only: %i[ show edit update destroy ]

  # GET /array_tables or /array_tables.json
  def index
    @array_tables = ArrayTable.all
  end

  # GET /array_tables/1 or /array_tables/1.json
  def show
  end

  # GET /array_tables/new
  def new
    @array_table = ArrayTable.new
  end

  # GET /array_tables/1/edit
  def edit
  end

  # POST /array_tables or /array_tables.json
  def create
    @array_table = ArrayTable.new(array_table_params)

    respond_to do |format|
      if @array_table.save
        format.html { redirect_to @array_table, notice: "Array table was successfully created." }
        format.json { render :show, status: :created, location: @array_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @array_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /array_tables/1 or /array_tables/1.json
  def update
    respond_to do |format|
      if @array_table.update(array_table_params)
        format.html { redirect_to @array_table, notice: "Array table was successfully updated." }
        format.json { render :show, status: :ok, location: @array_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @array_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /array_tables/1 or /array_tables/1.json
  def destroy
    @array_table.destroy
    respond_to do |format|
      format.html { redirect_to array_tables_url, notice: "Array table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_array_table
      @array_table = ArrayTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def array_table_params
      params.require(:array_table).permit(:Array_ID, :Length, :Arrived, :Supplier, :Batch)
    end
end
