require_relative 'node'

class Bacon

  def initialize
  end

  def dfs_bacon(node)
    return nil unless node
    dist = 0
    actors_visited = []
    node_stack = [node]
    film_stack = []
    found = false

    until found do
      curr_node = node_stack.pop
      children = []
      films = []
      
      #return false if curr_node == nil
      if curr_node == nil || curr_node.name == 'kevin_bacon'
        found = true
      else
        curr_node.film_actor_hash.each do | film, actors |

          unless film_stack.include?(film)
            films << film
            film_stack << film
            actors.each do | actor |
              unless actors_visited.include?(actor)
                children << actor
                actors_visited << actor
              end
            end
          end
        end
        dist += 1
        node_stack = node_stack + children
      end
    end
    return film_stack
  end

end
