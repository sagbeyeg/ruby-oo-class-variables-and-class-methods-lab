require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        count_genre = {}

        @@genres.each do |key,value|
           if !count_genre[key]
            count_genre[key] = 1
           else
            count_genre[key] += 1
           end
        end
    count_genre
    end

    def self.artist_count
        count_artist = {}

        @@artists.each do |key,value|
           if !count_artist[key]
            count_artist[key] = 1
           else
            count_artist[key] += 1
           end
        end
    count_artist
    end
end