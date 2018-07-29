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
          Painting.all.select {|painting| painting.artist == self}
      end

      def galleries
          paintings.map {|painting| painting.gallery}
      end

      def cities
          galleries.map {|gallery| gallery.city}
      end

      def self.avg_experience
          total_experience = 0
          Artist.all.each {|artist| total_experience += artist.years_active}
          total_experience/ (Artist.all.size)
      end

end
