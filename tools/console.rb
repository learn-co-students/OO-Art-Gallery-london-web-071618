require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


sarah = Artist.new("sarah", 6)
maduri = Artist.new("maduri", 2)
ritz = Artist.new("ritz", 8)

gallery1 = Gallery.new("gallery1", "London")
gallery2 = Gallery.new("gallery2", "NY")
gallery3 = Gallery.new("gallery3", "Berlin")
gallery4 = Gallery.new("gallery4", "Paris")
gallery4 = Gallery.new("gallery5", "Paris")


painting1 = Painting.new("painting1", "abstract", sarah, gallery1)
painting2 = Painting.new("painting2", "impressionist", ritz, gallery2)
painting3 = Painting.new("painting3", "finger painting", maduri, gallery2)
painting4 = Painting.new("painting4", "abstract", ritz, gallery4)

binding.pry
