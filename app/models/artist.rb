class Artist

  ALL = []

  attr_reader :name, :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    ALL << self
  end

  def self.all
    ALL
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map {|g| g.gallery}
  end

  def cities
    galleries.map {|c| c.city}
  end

  def self.average_years_active
    average = self.all.map {|t| t.years_active}
    average.inject(:+)/average.size
  end

end
