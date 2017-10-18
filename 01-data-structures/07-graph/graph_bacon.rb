require_relative 'node'

class Bacon

  def initialize

  end

  def find_bacon(node)
    films_to_bacon = []
    dist = 0
    queue = []
    # Loop through node.film_actor_hash
    node.film_actor_hash.each do | film, actors |
      dist += 1

      # Loop through films in film_actor_hash
      actors.each do | actor |

        # If actor is Bacon end
        if actor.name = "kevin_bacon"
          # Return the Bacon and Filmname
        else
          # Else place in queue with distance
          queue << actor

          # place in adjacency list with distance
          films_to_bacon << actor
        end
      end
    end
    # when all films looped through, then queue.deq node and cycle through add dist += 1
  end

end
