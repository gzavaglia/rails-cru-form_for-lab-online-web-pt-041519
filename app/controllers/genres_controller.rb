class GenresController < ApplicationController
  def show
    @genre = Genre.find_by(params[:id])
  end
  
  def new
    @genre =
  end
  
  def create
    @genre = Genre.new(post_params).
    @genre.save
    redirect_to genre_path(@genre)
  end
  
  
  
  
  def post_params
    params.require(:genre).permit(:name)
  end
end
