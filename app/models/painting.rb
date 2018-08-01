class Painting

  ALL = []

  attr_reader :title, :style, :artist, :gallery

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    ALL << self
  end

  def self.all
    ALL
  end

  def self.styles
    all.uniq {|s| s.style}
  end

end
