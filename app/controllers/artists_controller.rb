class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @new_releases = @artist.albums.new_releases
    @top_tracks = Song.top_tracks_for_artist(params[:id])
  end
end
