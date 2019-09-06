class GenresController < ApplicationController
  def show
    @genre = Genre.new
  end
  
  def new
    @genre = Genre.new(post_params)
  end
  
end
