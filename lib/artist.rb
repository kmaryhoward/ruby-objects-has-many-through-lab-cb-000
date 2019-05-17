class Artist
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    genre = Genre.new(genre)
    song = Song.new(song_name)
    song.artist = self
    song.genre = genre
  end

  def songs
    new_song.song.all
  end

  def genres
    new_song.genre.all
  end


end
