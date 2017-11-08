require_relative 'City'

class Tsp

  include Math

  attr_accessor :city_list_long
  attr_accessor :city_list_lat

  def initialize()
    @city_list_long = []
    @city_list_lat = []
  end

  def add_cities(city_nodes)
    city_nodes.each do |city_node|
      @city_list_lat << city_node
      @city_list_long << city_node
    end
    @city_list_long.sort! { |a, b| a.long <=> b.long }
    @city_list_lat.sort! { |a, b| a.lat <=> b.lat }
  end

  def get_route(cities)
    # add to lat and long arrays
    @city_list_lat = []
    @city_list_long = []
    add_cities(cities)
    # set current_city and neighbors
    neighbors = cities
    current_city = neighbors.shift
    route = [current_city]

    while neighbors.count > 1 do
      next_city = nearest_neighbor(current_city)
      route << neighbors.delete(next_city)
      @city_list_lat.delete(current_city)
      @city_list_long.delete(current_city)
      current_city = next_city
    end
    route << neighbors.shift
    route << route[0]
    route
  end

  def nearest_neighbor(current_city)
    # get neighbor_cities from @city_list_long and @city_list_lat
    ilong = @city_list_long.index(current_city)
    ilat = @city_list_lat.index(current_city)
    neighbor_cities = []
    neighbor_cities << @city_list_long[ilong - 1]
    neighbor_cities << @city_list_long[ilong + 1]
    neighbor_cities << @city_list_lat[ilat - 1]
    neighbor_cities << @city_list_lat[ilat + 1]

    # find nearest city
    shortest = 10000
    nearest_city = nil
    neighbor_cities.each do |neighbor|
      if neighbor != nil
        dist = calc_dist(current_city, neighbor)
        if dist < shortest
          shortest = dist
          nearest_city = neighbor
        end
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
