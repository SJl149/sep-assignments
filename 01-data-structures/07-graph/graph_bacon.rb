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
          binding.pry
          if bacon?(actors)
            film_stack << film
            break
          else
            unless film_list.flatten.include?(film)
              film_list[dist] << film
              film_stack << film
              binding.pry
              actors.each do | actor |
                binding.pry
                unless actors_visited.include?(actor)
                  children << actor
                  actors_visited << actor
                  binding.pry
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

  def bacon?(node_array)
    includes = false
    node_array.each do |actor|
      if actor.name == 'kevin_bacon'
        includes = true
      end
    end
    includes
  end

  def dist_check(dist)
    if dist > 6
      return true
    end
  end

  def search_films(dist, film, actors, connections)
    if bacon?(actors)
      return connections
    elsif dist > 6
      return nil
    else
      dist += 1
      search = nil
      actors.each do | actor |
        actor.film_actor_hash.each do | hash_film, hash_actors |
          if search == nil
            connections << hash_film unless connections.include?(hash_film)
            search = search_films(dist, hash_film, hash_actors, connections)
          else
            return connections
          end
        end
      end
    end
  end

  def find_kevin(node)
    return nil unless node
    dist = 0
    connections = []
    if node == nil || node.name == "kevin_bacon"
      return connections
    else
      node.film_actor_hash.each do | film, actors |
        if bacon?(actors)
          connections << film
          break
        else
          connections = search_films(dist, film, actors, connections)
          # break if connections
        end
      end
    end
    connections
  end

end
