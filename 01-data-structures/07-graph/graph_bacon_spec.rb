include RSpec

require_relative 'graph_bacon'

RSpec.describe Bacon, type: Class do
  let (:kevin_bacon) { Node.new('kevin_bacon') }
  let (:fred_ward) { Node.new('fred_ward') }
  let (:reba_mcentire) { Node.new('reba_mcentire') }
  let (:scott_glenn) { Node.new('scott_glenn') }
  let (:ed_harris) { Node.new('ed_harris') }
  let (:sean_connery) { Node.new('sean_connery') }

  let (:sizzle) { Bacon.new() }

  before do
    kevin_bacon.film_actor_hash["Tremors"] = [fred_ward, reba_mcentire]
    fred_ward.film_actor_hash["Tremors"] = [kevin_bacon, reba_mcentire]
    reba_mcentire.film_actor_hash["Tremors"] = [kevin_bacon, fred_ward]
    scott_glenn.film_actor_hash["The Hunt for Red October"] = [sean_connery]
    sean_connery.film_actor_hash["The Hunt for Red October"] = [scott_glenn]
    ed_harris.film_actor_hash["The Right Stuff"] = [scott_glenn]
    scott_glenn.film_actor_hash["The Right Stuff"] = [ed_harris]
    ed_harris.film_actor_hash["Apollo 13"] = [kevin_bacon]
    kevin_bacon.film_actor_hash["Apollo 13"] = [ed_harris]
  end

  describe "#find_bacon" do
    it "handles nil gracefully" do
      expect(sizzle.find_bacon(nil)).to eq nil
    end

    it "returns movie with start_node kevin_bacon" do

    end

    it "returns one movie with fred_ward" do

    end

    it "returns two movies with sean_connery" do

    end
  end
end
