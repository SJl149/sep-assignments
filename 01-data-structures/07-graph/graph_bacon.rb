require_relative 'node'

class Bacon

  def initialize
  end

  def find_bacon(node)
    return [] unless node && node.name != "kevin_bacon"
    queue = [node]
    film_list = [[],[],[],[],[],[]]
    dist = 0
    actors_visited = []

    node.dist = 0
    while (queue.length != 0) && dist < 7
      curr_node = queue.shift
      curr_node.film_actor_hash.each do | film, actors |
        if !film_list.flatten.include?(film)
          film_list[dist] << film
        end
        actors.each do | actor |
          actors_visited << actor
          if actor.dist == nil
            actor.dist = dist + 1
            actor.predecessor = curr_node
            queue << actor
          end
          if actor.name == "kevin_bacon"
            if actor.predecessor == node
              reset_nodes(actors_visited)
              return [film]
            end
            path = []
            child = actor
            while child.predecessor != nil do
              parent = child.predecessor
              parent.film_actor_hash.each do |movie, cast|
                if cast.include?(child)
                  path.unshift(movie)
                end
              end
              child = parent
              dist -= 1
            end
            reset_nodes(actors_visited)
            return path
          end
        end
      end
    end
    reset_nodes(actors_visited)
    return []
  end

  def reset_nodes(actors)
    actors.each do |actor|
      actor.dist = nil
      actor.predecessor = nil
    end
  end
end
