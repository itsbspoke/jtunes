class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist

  attr_accessor :play_count

  def self.random
    find(Song.find(rand(Song.count)))
  end

  def self.top_tracks
    # This is where I started as an example to find out the column
    # name that Rails generated for me. [jvf]
    #
    # Play.order(:song_id).limit(5).count(group: :song_id)
    #
    # I found out from the rails console that the count column was
    # named count_all, so the final implementation was: [jvf]
    play_hash = Play.order("count_all desc").limit(5).count(group: :song_id)

    #Other useful hash methods
    # play_hash.values
    # play_hash.keys
    # play_hash[key]

    collect_songs(play_hash)
  end

  def self.top_tracks_for_artist(artist_id)
    play_hash = Play.joins("inner join songs on songs.id = plays.song_id").
      joins("inner join artists on artists.id = songs.artist_id").
      order("count_all desc").limit(5).where("artists.id = #{artist_id}").count(group: :song_id)
    collect_songs(play_hash)
  end

  private

  def self.collect_songs(play_hash)
    play_hash.collect do |song_id, play_count| 
      song = Song.find(song_id)
      song.play_count = play_count
      song
    end
  end

end
