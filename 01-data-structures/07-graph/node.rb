class Node
  attr_accessor :name
  attr_accessor :film_actor_hash
  attr_accessor :dist
  attr_accessor :predecessor

  def initialize(name)
    @name = name
    @film_actor_hash = {}
    @dist = nil
    @predecessor = nil
  end
end
