class VolsController < ApplicationController
  before_action :set_vol, only: %i[ show edit update destroy ]

  # GET /vols or /vols.json
  def index
    @vols = Vol.all
  end

  # GET /vols/1 or /vols/1.json
  def show
  end

  # GET /vols/new
  def new
    @vol = Vol.new
  end

  # GET /vols/1/edit
  def edit
  end

  # POST /vols or /vols.json
  def create
    @vol = Vol.new(vol_params)

    respond_to do |format|
      if @vol.save
        format.html { redirect_to vol_url(@vol), notice: "Vol was successfully created." }
        format.json { render :show, status: :created, location: @vol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vols/1 or /vols/1.json
  def update
    respond_to do |format|
      if @vol.update(vol_params)
        format.html { redirect_to vol_url(@vol), notice: "Vol was successfully updated." }
        format.json { render :show, status: :ok, location: @vol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vols/1 or /vols/1.json
  def destroy
    @vol.destroy

    respond_to do |format|
      format.html { redirect_to vols_url, notice: "Vol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vol
      @vol = Vol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vol_params
      params.require(:vol).permit(:numero, :id_aeroport_depart, :id_aeroport_arrivee, :duree, :date_depart, :nb_place_economique, :nb_place_business)
    end
end
