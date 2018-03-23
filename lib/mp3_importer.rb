class MP3Importer

  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3")
  end

  def import
    self.files.each { |x| Song.new_by_filename(x)
  end

end
