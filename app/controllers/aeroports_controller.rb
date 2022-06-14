class AeroportsController < ApplicationController
  before_action :set_aeroport, only: %i[ show edit update destroy ]

  # GET /aeroports or /aeroports.json
  def index
    @aeroports = Aeroport.all
  end

  # GET /aeroports/1 or /aeroports/1.json
  def show
  end

  # GET /aeroports/new
  def new
    @aeroport = Aeroport.new
  end

  # GET /aeroports/1/edit
  def edit
  end

  # POST /aeroports or /aeroports.json
  def create
    @aeroport = Aeroport.new(aeroport_params)

    respond_to do |format|
      if @aeroport.save
        format.html { redirect_to aeroport_url(@aeroport), notice: "Aeroport was successfully created." }
        format.json { render :show, status: :created, location: @aeroport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aeroport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aeroports/1 or /aeroports/1.json
  def update
    respond_to do |format|
      if @aeroport.update(aeroport_params)
        format.html { redirect_to aeroport_url(@aeroport), notice: "Aeroport was successfully updated." }
        format.json { render :show, status: :ok, location: @aeroport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aeroport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeroports/1 or /aeroports/1.json
  def destroy
    @aeroport.destroy

    respond_to do |format|
      format.html { redirect_to aeroports_url, notice: "Aeroport was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aeroport
      @aeroport = Aeroport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aeroport_params
      params.require(:aeroport).permit(:name, :libelle)
    end
end
