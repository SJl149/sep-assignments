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
    film_list = [[],[],[],[],[],[],[]]
    found = false

    until found do
      curr_node = node_stack.pop
      children = []
      dist += 1

      if curr_node == nil || curr_node.name == 'kevin_bacon'
        found = true
      else
        curr_node.film_actor_hash.each do | film, actors |

          if bacon?(actors)
            film_stack << film
            break
          else
            unless film_list.flatten.include?(film)
              film_list[dist] << film
              film_stack << film
              actors.each do | actor |
                unless actors_visited.include?(actor)
                  children << actor
                  actors_visited << actor
                end
              end
            end
          end
        end
        node_stack = node_stack + children
      end
    end
    return film_stack
  end

end

def bacon?(node_array)
  includes = false
  node_array.each { |actor| includes = true if actor.name = 'kevin_bacon' }
  includes
end
