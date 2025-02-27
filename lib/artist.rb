class Artist

    attr_accessor :name, :genre, :title
    @@all=[]


    def initialize(name)
        @name=name
        @@all <<self
    end 

    def self.all
        @@all
    end 

    def new_song(name, genre)
        @name=name
        @genre=genre 
        Song.new(name, self, genre)
    end 

    def songs
        Song.all.select {|song| song.artist == self }
    end 

    def genres
   
        songs.map {|song| song.genre}.uniq
       

    end

end 