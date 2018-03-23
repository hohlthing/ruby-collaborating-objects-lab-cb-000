class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    array = filename.split(" - ")
    artist = array[0]
    song_name = array[1].gsub('.mp3','')
    song = self.new(song_name)
    song.artist = Artist.new(artist)
    song
  end

end
