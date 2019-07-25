class Song
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.total_song_count
    @@all.length
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      return self.artist.name
    else
      return nil
    end
  end

end