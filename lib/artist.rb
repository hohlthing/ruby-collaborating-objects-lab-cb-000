class Artist

  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect { |x| x.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each { |x| puts x.name }
  end

end
