class Fav_song

  def artist
    return "Jethro Tull"
  end

  def song
    return "Aqualung"
  end

  def lyrics
    return "Sitting on a park bench!"
  end
end

song = Fav_song.new
puts song.artist
puts song.song
puts song.lyrics