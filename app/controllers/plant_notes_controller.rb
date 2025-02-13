class PlantNotesController < ApplicationController
  before_action :set_plant_note, only: %i[ show edit update destroy ]

  # GET /plant_notes or /plant_notes.json
  def index
    redirect_to root_path
    @plant_notes = PlantNote.all
  end

  # GET /plant_notes/1 or /plant_notes/1.json
  def show
    redirect_to root_path
  end

  # GET /plant_notes/new
  def new
    redirect_to root_path
    @plant_note = PlantNote.new
  end

  # GET /plant_notes/1/edit
  def edit
  end

  # POST /plant_notes or /plant_notes.json
  def create
    @plant_note = PlantNote.new(plant_note_params)

    respond_to do |format|
      if @plant_note.save
        format.html { redirect_to @plant_note, notice: "Plant note was successfully created." }
        format.json { render :show, status: :created, location: @plant_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_notes/1 or /plant_notes/1.json
  def update
    respond_to do |format|
      if @plant_note.update(plant_note_params)
        format.html { redirect_to @plant_note, notice: "Plant note was successfully updated." }
        format.json { render :show, status: :ok, location: @plant_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_notes/1 or /plant_notes/1.json
  def destroy
    @plant_note.destroy
    respond_to do |format|
      format.html { redirect_to plant_notes_url, notice: "Plant note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_note
      @plant_note = PlantNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_note_params
      params.require(:plant_note).permit(:Plant_ID, :Note)
    end
end
