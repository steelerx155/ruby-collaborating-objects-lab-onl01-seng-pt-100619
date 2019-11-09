require 'pry'
class Song
  
  attr_accessor :name, :artist, :artist_name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
  @@all 
  end
  
  def self.new_by_filename(filename)
    split_files = filename.split(" - ")
    # binding.pry
    song_name = split_files[1]
    new_song = self.new(song_name)
    new_song.artist = Artist.new(split_files[0])
    new_song
  end
  
  def self.find_by_name(name)
      self.all.find {| artist | artist.name == name}
    
  
  def artist_name=(name)
    # binding.pry
    find_by_name(name)
    find_by_name(name)  
    end
  end
end  




# #artist_name=
#     accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute (FAILED - 1)

# Failures:

#   1) Song #artist_name= accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute
#     Failure/Error: expect(song.artist).to be_an(Artist)
#       expected nil to be a kind of Artist