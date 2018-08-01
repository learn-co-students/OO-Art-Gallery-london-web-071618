class Gallery

  ALL = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    ALL << self
  end

  def self.all
    ALL
  end

  def self.cities
    all.uniq {|c| c.city}
  end

  def artists
    Painting.all.select {|a| a.gallery == self}
  end

  def names_of_artists
    artists.map {|n| n.artist}
  end

  def self.years_of_experience
    # we need to know how many years of experience that all artists have had combined
    # these artist need to be from specific gallery
    total = Artist.all.map {|t| t.years_active}
    total.inject(0) {|sum, x| sum + x}
  end
end
