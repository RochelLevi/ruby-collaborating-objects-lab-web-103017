class MP3Importer

  attr_reader :path

  def initialize(filepath)
    @path = filepath
    @files = []
  end

  def files
    #@files = Dir.glob('#{@path}*.mp3')
    @files = Dir["#{@path}/*.mp3"]
    @files.collect! do |file|
      file.split("/").select{|piece| piece.include?(".mp3")}
    end.flatten!
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
