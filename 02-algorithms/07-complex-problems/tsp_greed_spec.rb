include RSpec

require_relative 'tsp_greed'
require_relative 'city'

RSpec.describe Tsp, type: Class do
  let (:new_york) { City.new("New York", 40.7, 74) }
  let (:los_angeles) { City.new("Los Angeles", 34, 118.2) }
  let (:chicago) { City.new("Chicago", 41.8, 87.6) }
  let (:houston) { City.new("Houston", 29.8, 95.4) }
  let (:philadelphia) { City.new("Philadelphia", 40, 75.2) }
  let (:phoenix) { City.new("Phoenix", 33.4, 112.1) }
  let (:san_antonio) { City.new("San Antonio", 29.4, 98.5) }
  let (:san_diego) { City.new("San Diego", 32.7, 117.2) }
  let (:dallas) { City.new("Dallas", 32.8, 96.8) }
  let (:san_jose) {City.new("San Jose", 37.3, 121.9)}
  let (:austin) {City.new("Austin", 30.3, 97.7)}
  let (:indianapolis) {City.new("Indianapolis", 39.8, 86.2)}
  let (:jacksonville) {City.new("Jacksonville", 30.3, 81.7)}
  let (:san_francisco) {City.new("San Francisco", 37.8, 122.4)}
  let (:columbus) {City.new("Columbus", 40, 83)}
  let (:charlotte) {City.new("Charlotte", 35.2, 80.8)}
  let (:detroit) {City.new("Detroit", 42.3, 83)}
  let (:memphis) {City.new("Memphis", 35.1, 90)}
  let (:seattle) {City.new("Seattle", 47.6, 122.3)}
  let (:denver) {City.new("Denver", 39.7, 105)}
  let (:washington) {City.new("Washington DC", 38.9, 77)}
  let (:boston) {City.new("Boston", 42.4, 71.1)}
  let (:oklahoma_city) {City.new("Oklahoma City", 35.5, 97.5)}
  let (:portland) {City.new("Portland", 45.5, 122.7)}
  let (:las_vegas) {City.new("Las Vegas", 36.2, 115.1)}
  let (:milwaukee) {City.new("Milwaukee", 43, 87.9)}
  let (:kansas_city) {City.new("Kansas City", 39.1, 94.6)}
  let (:atlanta) {City.new("Atlanta", 33.7, 84.4)}
  let (:omaha) {City.new("Omaha", 41.3, 96)}
  let (:miami) {City.new("Miami", 25.8, 80.2)}

  let (:lowman) { Tsp.new() }

  describe "#get_route" do
    it "finds an efficient route given a list of cities" do
      cities = [new_york, los_angeles, boston, miami, philadelphia, houston, atlanta, omaha, columbus, jacksonville]
      ideal_route = [new_york, philadelphia, boston, miami, jacksonville, atlanta, columbus, omaha, houston, los_angeles, new_york]
      expect(lowman.get_route(cities)).to eq(ideal_route)
    end
  end

end
