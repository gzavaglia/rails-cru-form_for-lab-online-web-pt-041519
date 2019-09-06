class SongsController < ApplicationController
  def show
    @song = Song.find_by(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(post_params)
    @song.save
    redirect_to song_path(@song)
  end
  
  def edit 
    @song = Song.find_by(params[:id])
  end
  
  def update
    @song = Song.find_by(params[:id])
    @song.update(post_params)
    redirect_to song_path(@song)
  end
  
  
  
  
  def post_params
    params.require(:song).permit(:name)
  end
end
