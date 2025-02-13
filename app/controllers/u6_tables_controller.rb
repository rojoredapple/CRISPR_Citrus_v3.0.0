class U6TablesController < ApplicationController
  before_action :set_u6_table, only: %i[ show edit update destroy ]

  # GET /u6_tables or /u6_tables.json
  def index
    @u6_tables = U6Table.all
  end

  # GET /u6_tables/1 or /u6_tables/1.json
  def show
  end

  # GET /u6_tables/new
  def new
    @u6_table = U6Table.new
  end

  # GET /u6_tables/1/edit
  def edit
  end

  # POST /u6_tables or /u6_tables.json
  def create
    @u6_table = U6Table.new(u6_table_params)

    respond_to do |format|
      if @u6_table.save
        format.html { redirect_to @u6_table, notice: "U6 table was successfully created." }
        format.json { render :show, status: :created, location: @u6_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @u6_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /u6_tables/1 or /u6_tables/1.json
  def update
    respond_to do |format|
      if @u6_table.update(u6_table_params)
        format.html { redirect_to @u6_table, notice: "U6 table was successfully updated." }
        format.json { render :show, status: :ok, location: @u6_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @u6_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u6_tables/1 or /u6_tables/1.json
  def destroy
    @u6_table.destroy
    respond_to do |format|
      format.html { redirect_to u6_tables_url, notice: "U6 table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u6_table
      @u6_table = U6Table.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def u6_table_params
      params.require(:u6_table).permit(:Vector_ID, :sgRNA_ID, :Position)
    end
end
