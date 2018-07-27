class Gallery

  attr_reader :name, :cityr
  @@all = []
    def initialize(name, city)
      @name = name
      @city = city
      @@all << self
    end

    def self.all
      @@all
    end

    def self.all_cities
      self.all.map {|x| x.city}.uniq
    end

    def self.artists_from(gallery)
      select_painting = Painting.all.select {|x| x.gallery == gallery}
      select_painting.map {|x| x.artist}
    end

    def self.artists_names_from(gallery)
      artists_list = self.artists_from(gallery)
      artists_list.map {|x| x.name}
    end

    def years_experience_at
      gallery_artists = Gallery.artists_from(self)
      gallery_artists.map {|x| x.years_active}.inject(:+)
    end


end
