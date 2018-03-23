class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_from_filename(filename)
    array = filename.split(" - ")
    artist = array[0]
    name = array[1].gsub('.mp3','')
    song = self.new(name)
    song.artist = artist
    song
  end

end
