class GpNotesController < ApplicationController
  before_action :set_gp_note, only: %i[ show edit update destroy ]

  # GET /gp_notes or /gp_notes.json
  def index
    redirect_to root_path
    @gp_notes = GpNote.all
  end

  # GET /gp_notes/1 or /gp_notes/1.json
  def show
    redirect_to root_path
  end

  # GET /gp_notes/new
  def new
    redirect_to root_path
    @gp_note = GpNote.new
  end

  # GET /gp_notes/1/edit
  def edit
    redirect_to root_path
  end

  # POST /gp_notes or /gp_notes.json
  def create
    redirect_to root_path
    @gp_note = GpNote.new(gp_note_params)

    respond_to do |format|
      if @gp_note.save
        format.html { redirect_to @gp_note, notice: "Gp note was successfully created." }
        format.json { render :show, status: :created, location: @gp_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gp_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gp_notes/1 or /gp_notes/1.json
  def update
    respond_to do |format|
      if @gp_note.update(gp_note_params)
        format.html { redirect_to @gp_note, notice: "Gp note was successfully updated." }
        format.json { render :show, status: :ok, location: @gp_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gp_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gp_notes/1 or /gp_notes/1.json
  def destroy
    redirect_to root_path
    @gp_note.destroy
    respond_to do |format|
      format.html { redirect_to gp_notes_url, notice: "Gp note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gp_note
      @gp_note = GpNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gp_note_params
      params.require(:gp_note).permit(:Gene_ID, :Note)
    end
end
