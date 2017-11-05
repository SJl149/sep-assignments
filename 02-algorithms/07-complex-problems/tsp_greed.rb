require_relative 'City'

class Tsp

  include Math



  def nearest_neighbor(graph_of_cities, current_city)
    while current_city == false
      neighbor_cities = current_city.neighbors
      next_city = neighbor_cities[0]

      for current_neighbor in neighbor_cities
        if current_neighbor.distance < next_city.distance
          current_neighbor = next_city
        end
      end
      current_city.visited = true
      next_city = current_city
    end
  end

  private

  def calc_dist(lat1, long1, lat2, long2)
    radius_mi = 3959
    deg_lat = deg_to_rad(lat2 - lat1)
    deg_long = deg_to_rad(long2 - long1)
    a = sin(deg_lat / 2) * sin(deg_lat / 2) + cos(deg_to_rad(lat1)) * cos(deg_to_rad(lat2)) * sin(deg_long / 2) * sin(deg_long / 2)
    c = 2 * atan2(sqrt(a), sqrt(1 - a))
    radius_mi * c
  end

  def deg_to_rad(deg)
    deg * PI / 180
  end
end
