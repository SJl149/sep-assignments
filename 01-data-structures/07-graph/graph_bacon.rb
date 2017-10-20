require_relative 'node'

class Bacon

  def initialize

  end

  def find_bacon(node)
    return nil unless node
    films_to_bacon = []
    dist = 0
    node_list = []
    queue = []
    # Loop through node.film_actor_hash BFS
    node.film_actor_hash.each do | film, actors |
      films_to_bacon << film
      # Loop through films in film_actor_hash
      actors.each do | actor |
        if actor.name = "kevin_bacon"
          return films_to_bacon
          # Return the Bacon and Filmname
        elsif !queue.include?(actor)
          # Else place in queue
          queue << actor
          # place in adjacency list with distance
          node_list[dist] += actor
        end
      end
      dist += 1
    end
    # when all films looped through, then queue.deq node and cycle through add dist += 1
    while queue != nil
      # Loop through node.film_actor_hash BFS
      node.film_actor_hash.each do | film, actors |
        films_to_bacon << film
        # Loop through films in film_actor_hash
        actors.each do | actor |
          if actor.name = "kevin_bacon"
            return films_to_bacon
            # Return the Bacon and Filmname
          elsif !queue.include?(actor)
            # Else place in queue
            queue << actor
            # place in adjacency list with distance
            node_list[dist] += actor
          end
        end
        dist += 1
      end
    end

    return film_actor_hash
  end



end
