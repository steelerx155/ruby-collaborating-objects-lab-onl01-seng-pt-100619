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
    split_files = filename.split( " - " )
    song_name = split_files[1]
    new_song = self.new(song_name)
    
  end
  
  def artist_name(name)
    self.all.find {| artist | artist.name == name}
    
    
  end


end  