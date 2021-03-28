class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if !self.artists.any? {|artist| artist.name == "Drake"}
      drake = Artist.create(name: "Drake")
    end
    created_song = Song.create(name: self.song.name)
    drake.songs << created_song
  end

end

# if Drake is not already an artist
#   create Drake record as artist
# assign song artist to Drake
