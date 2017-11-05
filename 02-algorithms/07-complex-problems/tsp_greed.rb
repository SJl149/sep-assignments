require_relative 'City'

class Tsp

  include Math

  attr_accessor :city_list

  def initialize()
    @city_list = [
      [[],[],[],[],[]],
      [[],[],[],[],[]],
      [[],[],[],[],[]],
      [[],[],[],[],[]],
      [[],[],[],[],[]],
      [[],[],[],[],[]],
      [[],[],[],[],[]],
      [[],[],[],[],[]]
    ]
    # 8x5 matrix of long(60-130 by 10) and lat(25-45 by 5)
  end

  def add_cities(city_nodes)
    city_nodes.each do |city_node|
      long = (city_node.long / 10).floor - 6
      lat = (city_node.lat / 5).floor - 5
      @city_list[long][lat] << city_node
    end
  end

  def city_neighbors(city_node)
    long = (city_node.long / 10).floor - 6
    lat = (city_node.lat / 5).floor - 5
    @city_list[long][lat]
  end

  def find_route(cities)
    # add to distance matrix
    add_cities(cities)
    # set current_city and neighbors
    neighbors = cities
    current_city = cities.shift
    route = [current_city]
    @city_list.delete(current_city)

    while neighbors.count != 1 do
      next_city = nearest_neighbor(neighbors, current_city)
      route << neighbors.delete(next_city)
      @city_list.delete(current_city)
      current_city = next_city
    end
    route << neighbors.shift
    route
    # find closest neighbor for each city
    # find shortest route
  end

  def nearest_neighbor(cities, current_city)
    # get neighbor_cities from @city_list
    long = (current_city.long / 10).floor - 6
    lat = (current_city.lat / 5).floor - 5
    neighbor_cities = @city_list[long][lat]
    while neighbor_cities.empty? do
      if long < 6
        neighbor_cities = @city_list[long + 1][lat]
      end
      if long > 0
        neighbor_cities = @city_list[long - 1][lat]
      end
      if lat < 5
        neighbor_cities = @city_list[long][lat + 1]
      end
      if lat > 0
        neighbor_cities = @city_list[long][lat - 1]
      end
    end

    # find nearest city
    shortest = 10000
    nearest_city = nil
    neighbor_cities.each do |neighbor|
      dist = calc_dist(current_city, neighbor)
      if dist < shortest
        nearest_city = neighbor
      end
    end
    nearest_city
  end

  private

  def calc_dist(city1, city2)

    radius_mi = 3959
    deg_lat = deg_to_rad(city2.lat - city1.lat)
    deg_long = deg_to_rad(city2.long - city1.long)
    a = sin(deg_lat / 2) * sin(deg_lat / 2) + cos(deg_to_rad(city1.lat)) * cos(deg_to_rad(city2.lat)) * sin(deg_long / 2) * sin(deg_long / 2)
    c = 2 * atan2(sqrt(a), sqrt(1 - a))
    radius_mi * c
  end

  def deg_to_rad(deg)
    deg * PI / 180
  end
end
