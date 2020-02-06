class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    @@all <<self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    artist && artist.name
  end
end
