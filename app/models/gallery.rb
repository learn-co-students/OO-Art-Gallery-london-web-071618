class Gallery

attr_accessor :name, :city

@@all = []

    def initialize(name, city)
      @name = name
      @city = city
      @@all << self
    end

    def self.all
        @@all
    end


    def self.cities
      Gallery.all.map {|gallery| gallery.city}.uniq
    end

    def artists
        all_paintings = Painting.all.select {|painting| painting.gallery == self}
        all_paintings.map {|painting| painting.artist}
    end

    def artist_names
        artists.map {|artist| artist.name}
    end

    def total_experience
        total_experience = 0
        artists.each {|artist| total_experience += artist.years_active}
        total_experience
    end 
end
