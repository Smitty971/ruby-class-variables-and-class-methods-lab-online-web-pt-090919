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
    #@@artists
    #@@genres
  end

  def count
    Song.count
  end
  #def self.all?
  #  @@artists << self
  #  @@genres << self
  #end

end
