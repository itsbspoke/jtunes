class WelcomeController < ApplicationController
  def index
    @new_releases = Album.new_releases
    @top_tracks = Song.top_tracks
  end
end
