require_relative "artist"

class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(song_name)
        @name = song_name        
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if !self.artist
            return nil
        end 

        self.artist.name
    end
end
