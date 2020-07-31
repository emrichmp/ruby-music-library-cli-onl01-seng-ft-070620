class Genre
  attr_accessor :name, :musiclibrarycontroller, :musicimporter
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
end