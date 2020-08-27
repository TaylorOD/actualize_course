class List

    def initialize
      @songs = []
    end
  
    def songs
      return @songs
    end
  
    def add_song(song)
      @songs << song
    end      

    def duration
        song_duration = []
        @songs.each do |song|
            song_duration << song.duration
        end
        return song_duration.sum
    end

    def friendly_duration
        friendly_song_duration = []
        @songs.each do |song|
            friendly_song_duration << song.duration.to_f / 60
        end
        return friendly_song_duration
    end

  
  
end