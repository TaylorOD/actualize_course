require_relative "list"
require_relative "song"

# Create list
list = List.new

# Create songs and add them to the list
list.add_song(Song.new("Wonderfloor", "Jonny the Singer", 204, "After all your my wonderfloor"))
list.add_song(Song.new("Heart of Silver", "Donna the Harmonica Player", 569, "I want to live, I want to give. I've been a miner for a heart of silver"))
list.add_song(Song.new("Twangy Kind of Mind", "Luke the Bluegrass Man", 123, "But don't tell my heart, my achy breaky heart. I just don't think he'd understand"))
list.add_song(Song.new("Another Loud Song", "Ricky the Belter", 309, "That voice which calls to me and speaks my name, And do I dream again? For now I find"))
list.add_song(Song.new("Come As You Are", "Nirvana", 290, "Come as you are, as you were, As I want you to be"))


# Print out the first song in the list
puts "First song title:"
puts list.songs[0].title
puts "---------"

# Print out the first artist in the list
puts "First song artist:"
puts list.songs[0].artist
puts "---------"

# Print out the first duration in the list
puts "First song duration (in seconds):"
puts list.songs[0].duration
puts "---------"

# Print out the first song lyrics in the list
puts "First song Lyrics:"
puts list.songs[0].lyrics
puts "---------"

# Play the first song in the list
puts "Playing the first song on the list:"
puts list.songs[0].title + " by " + list.songs[0].artist
puts list.songs[0].lyrics

# Lists the total duration of the songs in the list (in seconds)

puts "Total duration of all songs (in seconds):"
puts list.duration

# Lists the friendly duration of the songs in the list (in minutes)

puts "Total duration of all songs (in minutes):"
puts list.friendly_duration