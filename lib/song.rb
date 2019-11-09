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
  
  def artist_name(name)
   if self.find_or_create_by(artist_name)
      self.find_or_create_by(artist_name)
    else
      self.new(name)
  end    
end


end  