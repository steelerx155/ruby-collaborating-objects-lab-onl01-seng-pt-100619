class Song
  
  attr_accessor :name, :artist, :title
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
  @@all 
  end
  
  def self.new_by_filename(file_name)
    song = self.new
    song.title = file_name.split(" - ")[1]
    song
  end
end  