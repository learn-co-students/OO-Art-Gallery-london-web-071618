class Artist

  attr_accessor :name, :years_active

  @@all = []
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|x| x.artist == self}
  end

  def galleries
    self.paintings.map {|x| x.gallery }
  end

  def cities
    self.galleries.map {|x| x.city }
  end

  def self.average_yrs_experience
    years = self.all.map {|x| x.years_active}
    years.inject(:+)/years.size
  end
end
