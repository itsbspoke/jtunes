namespace :jtunes do
  desc "Seed the database with test data"
  task :seed => [:seed_artists, :seed_users, :seed_plays]

  task :seed_artists => :environment do
    artist_count = 100
    puts "Creating #{artist_count} artists"
    artist_count.times do |artist_num|
      artist = FactoryGirl.create(:artist)
      puts "Imagining artist #{artist.name}:"
      album_count = rand(6)+1
      puts "They have #{album_count} albums"
      album_count.times do |album_num|
        album = FactoryGirl.create(:album, artist: artist)
        puts "Album #{album_num+1}: #{album.name}"
        song_count = rand(17)+1
        song_count.times do |song_num|
          song = FactoryGirl.create(:song, artist: artist, album: album)
          puts "Song #{song_num+1}: #{song.name}"
        end
      end
    end
  end

  task :seed_users => :environment do
    user_count = 100
    puts "Creating #{user_count} users"
    user_count.times { FactoryGirl.create(:user) }
  end

  task :seed_plays do
    play_count = 10000
    puts "Creating #{play_count} plays"
    play_count.times do |play_count|
      FactoryGirl.create(:play, user: User.random, song: Song.random)
    end
  end
end
