class HomeController < ApplicationController
  def index
    @map_place = MapPlace.new
  end 
  
  def map_place_create
    @map_place = MapPlace.new(map_place_params)
    
    respond_to do |format|
      if @map_place.save
        format.js { render :layout => false } 
      else
        format.js { render :layout => false }
      end
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def map_place_params
      params.require(:map_place).permit(:place, :latitude, :longitude)
    end
end
