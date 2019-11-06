class Song
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
  song =  self.new
  song.save
  song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name 
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
      if self.find_by_name(name) == nil
        self.create_by_name(name)
      else 
        self.find_by_name(name)
      end 
  end
  
  def self.alphabetical
    @@all.sort_by {|a| a.name}
  end
  
  
  def self.create_from_filename(filename)
    song = filname.split(" - ")
    artist_name = song[0]
    name = name.split(" - ").song[1].chomp(".mp3")
  end
end
 