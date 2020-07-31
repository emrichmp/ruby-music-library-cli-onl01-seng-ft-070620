class Song
  attr_accessor :name, :artist, :genre, :musicimporter, :musiclibrarycontroller
  
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist != nil
      self.artist=(artist)
    end
    if genre != nil
      self.genre=(genre)
    end
  end
  
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(song)
    song = self.new(song)
    song.save
    song
  end
  
  def artist
    @artist
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre
    @genre
  end
  
  def genre=(genre)
    @genre = genre
    if genre.songs.include?(self)
      
    else
      genre.songs << self
    end
  end
  
  def self.find_by_name(name)
    @@all.detect do |song|
      song.name == name
    end
  end
  
  def self.find_or_create_by_name(file)
    array = filename.split("-")
    name_of_song = array[1]
    name_of_artist = array[0]
    name_of_genre = array[2].split(".mp3").join
    
    artist = Artist.find_or_create_by_name
  end
  
end