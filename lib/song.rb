class Song
  
  
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
        genre_count[genre] ||= 1 
        genre_count[genre] += 1
    end
    genre_count
  end
  
end