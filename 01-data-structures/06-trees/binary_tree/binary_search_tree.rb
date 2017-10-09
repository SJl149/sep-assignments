require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if root == nil
      root = node
    elsif node.rating < root.rating
      root.left = insert(root.left, node)
    else
      root.right = insert(root.right, node)
    end
    root
  end

  # Recursive Depth First Search
  def find(root, data)
    if root == nil || root.title == data
      return root
    end
    node = find(root.left, data)
    if node
      return node
    end
    find(root.right, data)
  end

  def delete(root, data)
    node_to_delete = find(root, data)
    return nil unless node_to_delete
    if node_to_delete.left == nil && node_to_delete.right == nil
      node_to_delete = nil
    elsif node_to_delete.right
      successor = node_to_delete.right
      while successor.left
        successor = successor.left
      end
      node_to_delete.title = successor.title
      node_to_delete.rating = successor.rating
      delete(root, successor.title)
    else
      successor = node_to_delete.left
      while successor.right
        successor = successor.right
      end
      node_to_delete.title = successor.title
      node_to_delete.rating = successor.rating
      delete(root, successor.title)
    end

  end

  # Recursive Breadth First Search
  def printf(children=nil)
    queue = Queue.new
    queue.enq(@root)
    while !queue.empty?
      node = queue.deq
      if node.title != nil
        puts "#{node.title}: #{node.rating}"
      end
      if node.left
        queue.enq(node.left)
      end
      if node.right
        queue.enq(node.right)
      end
    end
  end
end
