class MapPlacesController < ApplicationController
  before_action :set_map_place, only: [:show, :edit, :update, :destroy]

  # GET /map_places
  # GET /map_places.json
  def index
    @map_places = MapPlace.all
  end

  # GET /map_places/1
  # GET /map_places/1.json
  def show
  end

  # GET /map_places/new
  def new
    @map_place = MapPlace.new
  end

  # GET /map_places/1/edit
  def edit
  end

  # POST /map_places
  # POST /map_places.json
  def create
    @map_place = MapPlace.new(map_place_params)

    respond_to do |format|
      if @map_place.save
        format.html { redirect_to @map_place, notice: 'Map place was successfully created.' }
        format.json { render action: 'show', status: :created, location: @map_place }
      else
        format.html { render action: 'new' }
        format.json { render json: @map_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_places/1
  # PATCH/PUT /map_places/1.json
  def update
    respond_to do |format|
      if @map_place.update(map_place_params)
        format.html { redirect_to @map_place, notice: 'Map place was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @map_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_places/1
  # DELETE /map_places/1.json
  def destroy
    @map_place.destroy
    respond_to do |format|
      format.html { redirect_to map_places_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_place
      @map_place = MapPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_place_params
      params.require(:map_place).permit(:place, :latitude, :longitude)
    end
end
