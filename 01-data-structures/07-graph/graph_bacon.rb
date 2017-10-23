require_relative 'node'

class Bacon

  def initialize
  end

  def find_bacon(node)
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

def dist_check(dist)
  if dist > 6
    return true
  end
end

def search_films(dist, film, actors, connections)
  if bacon?(actors)
    connections << film
    return connections
  elsif dist > 6
    return nil
  else
    dist += 1
    actors.each do | actor |
      actor.film_actor_hash.each do | film, actors |
        search_films(dist, film, actors, connections)
      end
    end
  end
end

def find(node)
  return nil unless node
  dist = 0
  connections = []
  if node == nil || node.name == "kevin_bacon"
    return connections
  else
    node.film_actor_hash.each do | film, actors |
      connections = search_films(dist, film, actors, connections)

    end
  end
end
