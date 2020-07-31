class Artist
  attr_accessor :name, :song, :musiclibrarycontroller, :musicimporter
  
  @@all = []
  
  def intialize(name=nil)
    @name = name
    #@songs = []
  end
  
  def self.all()
    @@all
  end
end