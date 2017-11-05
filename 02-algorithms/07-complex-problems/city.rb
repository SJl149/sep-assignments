class City
  attr_accessor :name
  attr_accessor :neighbors
  attr_accessor :lat
  attr_accessor :long

  def initialize(name, lat, long)
    @name = name
    @lat = lat
    @long = long
    @neighbors = []
  end

end
