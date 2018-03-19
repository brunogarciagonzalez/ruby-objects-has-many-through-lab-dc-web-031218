# A genre should be initialized with a name and an empty @songs array.
# The Genre class needs an instance method, #add_song, that takes in an
#   argument of a song and adds that song to the genre's collection of songs.
#   Now you can use the Genre#add_song method in the Song class' initialize
#   method to tell the genre that it owns the given song.
# The Genre class needs an instance method, #songs, returns the @songs array.
# The Genre class needs an instance method, #artists, that iterates over the
#   genre's collection of songs and collects the artist that owns each song.
require_relative "./artist.rb"
require_relative "./song.rb"

class Genre
  attr_accessor :name, :songs, :artists
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    songs << song
    song.genre = self
  end

end
