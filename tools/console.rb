require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
pollock = Artist.new("Jackson Pollock", 30)
kooning = Artist.new("De kooning", 20)
arbus = Artist.new("Diane Arbus", 27)
white_cube = Gallery.new("white cube", "London")
tate = Gallery.new("Tate", "London")
pompidou = Gallery.new("Pompidou", "Paris")

pollock_27 = Painting.new("27", "ab ex", pollock, tate)
kooning_100 = Painting.new("100", "ab ex", kooning, white_cube)
pollock_80 = Painting.new("80", "ab ex", pollock, pompidou)

binding.pry
