class Artist

@@all = []

  attr_reader :name, :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.collect {|painting| painting.gallery}
  end

  def cities_with_artists_paintings
    self.galleries.collect {|gallery| gallery.city}.uniq
  end

  def self._years_experience
    yrs_active_all_artists = Artist.all.collect{|artist| artist.years_active.to_f}
    (yrs_active_all_artists.inject{|x, y| x + y } / yrs_active_all_artists.count).round(2)
  end

end
