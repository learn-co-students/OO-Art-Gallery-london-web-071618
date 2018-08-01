require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b_cereus = Gallery.new("b.cereus", "cell")
big = Gallery.new("Big", "Small")
don = Artist.new("Don", 6)
cube =  Artist.new("Cube", 10)
first = Painting.new("weirdo", "weird", don, b_cereus)
second = Painting.new("actually", "weirder", don, big)
third = Painting.new("waldo", "weird", cube, b_cereus)


binding.pry
