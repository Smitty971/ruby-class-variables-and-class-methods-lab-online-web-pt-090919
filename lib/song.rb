class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@names = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@names << name
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.names
    @@names.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) {
     |total, i| total[i] += 1; total
   }
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) {
     |total, i| total[i] += 1; total
   }
  end

end
