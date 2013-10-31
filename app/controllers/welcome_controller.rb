class WelcomeController < ApplicationController
  def index
    # if current_user && current_user.is_old_enough
    #   @new_releases = Album.new_releases
    # else
    #   @new_releases = Album.new_releases.where(clean: true)
    # end
    @new_releases = Album.new_releases_for(current_user)
    @top_tracks = Song.top_tracks
  end
end
