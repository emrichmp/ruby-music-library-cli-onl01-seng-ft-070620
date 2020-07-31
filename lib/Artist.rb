class Artist
  attr_accessor :name, :song
  
  @@all = []
  
  def intialize(name)
    @name = name
  end
  
  def self.all()
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end
end