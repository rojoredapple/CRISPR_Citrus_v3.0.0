class ArrayPositionsController < ApplicationController
  before_action :set_array_position, only: %i[ show edit update destroy ]

  # GET /array_positions or /array_positions.json
  def index
    @array_positions = ArrayPosition.all
  end

  # GET /array_positions/1 or /array_positions/1.json
  def show
  end

  # GET /array_positions/new
  def new
    @array_position = ArrayPosition.new
  end

  # GET /array_positions/1/edit
  def edit
  end

  # POST /array_positions or /array_positions.json
  def create
    @array_position = ArrayPosition.new(array_position_params)

    respond_to do |format|
      if @array_position.save
        format.html { redirect_to @array_position, notice: "Array position was successfully created." }
        format.json { render :show, status: :created, location: @array_position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @array_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /array_positions/1 or /array_positions/1.json
  def update
    respond_to do |format|
      if @array_position.update(array_position_params)
        format.html { redirect_to @array_position, notice: "Array position was successfully updated." }
        format.json { render :show, status: :ok, location: @array_position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @array_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /array_positions/1 or /array_positions/1.json
  def destroy
    @array_position.destroy
    respond_to do |format|
      format.html { redirect_to array_positions_url, notice: "Array position was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_array_position
      @array_position = ArrayPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def array_position_params
      params.require(:array_position).permit(:Array_ID, :sgRNA_ID, :tRNA_position)
    end
end
