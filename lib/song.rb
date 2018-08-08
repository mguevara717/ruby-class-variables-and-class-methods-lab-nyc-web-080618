class Song

  attr_accessor :name, :artist, :genre
  attr_reader

  @@count = 0 #creates a instance variable
  @@artists = [] #this keep track of all the songs
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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

  def self.genre_count
    hash = {}
    @@genres.each do |type|
      if hash[type] == nil
        hash[type] = 1
      else hash[type] += 1
    end
  end
  hash
  end

  def self.artist_count  #is a class method that returns a hash of artists and the
      hash = {}            #number of songs that have those artists
      @@artists.each do |singer|
        if hash[singer] == nil
          hash[singer] = 1 ## add one
        else hash[singer] += 1
        end
      end
    hash
  end
end
