class Gallery
@@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    @@all.collect {|gallery| gallery.city}.uniq
  end

  def artists
    x = Painting.all.select {|painting| painting.gallery == self }
    x.collect {|painting| painting.artist}.uniq
  end

  def artists_names
    self.artists.collect {|artist| artist.name}
  end

  def years_experience_artists
    array_years = self.artists.collect {|artist| artist.years_active}
    array_years.inject {|x, y| x + y}
  end

end
