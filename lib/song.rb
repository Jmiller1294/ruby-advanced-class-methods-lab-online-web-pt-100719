class Song
 
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
  @@all << self.new
  end

end
 