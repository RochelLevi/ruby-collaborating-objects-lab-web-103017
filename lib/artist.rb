class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
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

  def self.all_names
    @@all_names
  end

  def self.find_or_create_by_name(name)
    if @@all.find{|artist| artist.name == name}
      @@all.find{|artist| artist.name == name}
    else
      #making garbage unless save goes into initialize
      Artist.new(name)
    end


  end

  def print_songs
    @songs.each{|song| puts song.name}
  end


end
