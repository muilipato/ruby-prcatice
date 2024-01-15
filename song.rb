require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  @@all = []


  def initialize name , artist, genre
    @name = name.downcase
    @artist = artist.downcase
    @genre = genre.downcase
    @@count +=1
    @@artists << self.artist
    @@genres << self.genre

    @@genre_count[@genre] ||= 0  # lets say a ||=b . This means that a is assigned be if a does not have an assigned value
    @@genre_count[@genre] += 1

    @@artist_count[@artist] ||= 0
    @@artist_count[@artist] +=1

    @@all << self
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end
  def self.all
    @@all
  end

  def self.print_all_songs
    self.all.each do |song|
      puts song.name
    end
  end

end
s1= Song.new "nonstop" , "drake" ,"Hip-Hop"
s2 = Song.new "my love", "the weeknd", "pop"
s3 = Song.new "here we lie", "drake", "Hip-hop"

binding.pry
