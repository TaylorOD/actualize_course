class Favorite_song

  def initialize(artist, song, lyrics)
    @artist = artist
    @song = song
    @lyrics = lyrics
  end

  def artist=(text)
    @artist = text
  end

  def artist
    return @artist
  end

  def song=(text)
    @song = text
  end

  def song
    return @song
  end

  def lyrics=(text)
    @lyrics = text
  end

  def lyrics
    return @lyrics
  end

  def info
    return "This is " + artist + " singing " + song + " which starts with the lyric " + lyrics + "."
  end





end

song = Favorite_song.new("Jetho Tull", "Aqualung", "sitting on a park bench")

puts song.info