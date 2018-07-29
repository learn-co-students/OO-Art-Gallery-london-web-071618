require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = Artist.new("Bob", 10)
leah = Artist.new("Leah", 10)
zoe = Artist.new("Zoe", 20)


a_gallery = Gallery.new("A Gallery", "London")
b_gallery = Gallery.new("B Gallery", "Sydney")

painting1 = Painting.new("Painting 1", "impressionist", bob, a_gallery)
painting2 = Painting.new("Painting 2", "abstract", bob, a_gallery)
painting3 = Painting.new("Painting 3", "finger painting", leah, b_gallery)
painting4 = Painting.new("Painting 3", "finger painting", zoe, b_gallery)

binding.pry
