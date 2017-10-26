require_relative 'node'

class Bacon

  def initialize
    @graph = []
  end

  def find_bacon(node)
    return [] unless node && node.name != "kevin_bacon"
    actors_visited = []
    queue = [node]
    bacon = false
    connections = []

    while (queue.length != 0) && bacon == false
      curr_node = queue.shift
      curr_node.film_actor_hash.each do | film, actors |
        if !connections.include?(film)
          connections << film
        end
        actors.each do | actor |
          if unvisited?(queue, actor, actors_visited)
            queue << actor
            actors_visited << actor.name
          end
          if actor.name == "kevin_bacon"
            bacon = true
            return connections
          end
        end
      end
    end
    return []
  end

  def unvisited?(queue, actor, actors_visited)
    actor.name != "kevin_bacon" && !queue.include?(actor) && !actors_visited.include?(actor.name)
  end

  def backtrack(kb, node)
    kb.film_actor_hash.each do | film, actors |


    end
  end

  def create_adj_list(node)
    # Create adjacency list to keep track of films and actors
    # Once Bacon is retrace back to source
    # Else if dist > 6 or film_actor_hash for actor is empty or films have all been visited, then delete film from connections
    dist = 1
    queue = [node]
    films_visited = []
    actors_visited = []

    while queue.size != 0 || dist < 7
      curr_node = queue.shift
      curr_node.film_actor_hash.each do |film, actors|
        if film && !films_visited.include?(film)
          @graph[dist] << film
          films_visited << film
          actors.each do |actor|
            if !actors_visited.include?(actor.name)
              queue << actor
              actors_visited << actor.name
            end
          end
        end
      end
      dist += 1
    end
  end
end
