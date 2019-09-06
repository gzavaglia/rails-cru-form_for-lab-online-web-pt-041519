class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by(params)
  end
end
