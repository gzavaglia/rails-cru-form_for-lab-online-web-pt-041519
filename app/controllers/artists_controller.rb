class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create 
    @artist = Artist.new(post_params)
    @artist.save
    redirect_to artist_path(@artist)
  end
  
  
  
  def post_params
    params.require(:artist).permit(:name, :bio)
  end
end
