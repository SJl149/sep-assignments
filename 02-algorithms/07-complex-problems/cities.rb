require_relative 'city'
require_relative 'tsp_greed'

new_york = City.new("New York", 40.7, 74)
los_angeles = City.new("Los Angeles", 34, 118.2)
chicago = City.new("Chicago", 41.8, 87.6)
houston = City.new("Houston", 29.8, 95.4)
philadelphia = City.new("Philadelphia", 40, 75.2)
phoenix = City.new("Phoenix", 33.4, 112.1)
san_antonio = City.new("San Antonio", 29.4, 98.5)
san_diego = City.new("San Diego", 32.7, 117.2)
dallas = City.new("Dallas", 32.8, 96.8)
san_jose = City.new("San Jose", 37.3, 121.9)
austin = City.new("Austin", 30.3, 97.7)
indianapolis = City.new("Indianapolis", 39.8, 86.2)
jacksonville = City.new("Jacksonville", 30.3, 81.7)
san_francisco = City.new("San Francisco", 37.8, 122.4)
columbus = City.new("Columbus", 40, 83)
charlotte = City.new("Charlotte", 35.2, 80.8)
detroit = City.new("Detroit", 42.3, 83)
memphis = City.new("Memphis", 35.1, 90)
seattle = City.new("Seattle", 47.6, 122.3)
denver = City.new("Denver", 39.7, 105)
washington = City.new("Washington DC", 38.9, 77)
boston = City.new("Boston", 42.4, 71.1)
oklahoma_city = City.new("Oklahoma City", 35.5, 97.5)
portland = City.new("Portland", 45.5, 122.7)
las_vegas = City.new("Las Vegas", 36.2, 115.1)
milwaukee = City.new("Milwaukee", 43, 87.9)
kansas_city = City.new("Kansas City", 39.1, 94.6)
atlanta = City.new("Atlanta", 33.7, 84.4)
omaha = City.new("Omaha", 41.3, 96)
miami = City.new("Miami", 25.8, 80.2)

lowman = Tsp.new()

cities = [new_york, oklahoma_city, portland, las_vegas, milwaukee, kansas_city, chicago, phoenix, san_antonio, san_diego, dallas, san_jose, austin, indianapolis, san_francisco, detroit, charlotte, memphis, seattle, denver, washington, los_angeles, boston, miami, philadelphia, houston, atlanta, omaha, columbus, jacksonville]

route = lowman.get_route(cities)
route.each { |city| puts city.name }
