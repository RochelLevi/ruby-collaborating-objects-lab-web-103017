class Song

  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    #@artist_song_hsh = Hash.new([])
  end


  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    Artist.find_or_create_by_name(artist_name).songs << song
    song
  end


end
