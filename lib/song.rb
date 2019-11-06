class Song
  attr_accessor :name, :artist_name
  attr_reader :song
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
  song = Song.new
  @@all << song
  self
  end

end
 