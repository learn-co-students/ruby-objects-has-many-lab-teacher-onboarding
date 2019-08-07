require_relative "song"

class Artist
    attr_accessor :name
    @@all = []

    def initialize(artist_name)
        @name = artist_name
        @@all << self
    end    

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(title)
        new_song = Song.new(title)
        new_song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end

