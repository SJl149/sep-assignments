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

  # Recursive Depth First Search to find Parent
  def find_parent(root, data)
    if root == nil || root.title == data
      return nil
    end
    if root.left != nil && root.left.title == data
      return root
    elsif root.right != nil && root.right.title == data
      return root
    end
    node = find_parent(root.left, data)
    if node
      return node
    end
    find_parent(root.right, data)
  end

  def delete(root, data)
    node_to_delete = find(root, data)
    return nil unless node_to_delete
    parent = find_parent(root, node_to_delete.title)
    # if node_to_delete has no child
    if node_to_delete.left == nil && node_to_delete.right == nil
      if parent.left && parent.left == node_to_delete
        parent.left = nil
      else
        parent.right = nil
      end
      node_to_delete = nil

    # if node_to_delete has one child
    elsif (node_to_delete.left && node_to_delete.right == nil) || (node_to_delete.right && node_to_delete.left == nil )
      if parent.left && parent.left == node_to_delete
        if node_to_delete.left
          parent.left = node_to_delete.left
        else
          parent.left = node_to_delete.right
        end
      else
        if node_to_delete.left
          parent.right = node_to_delete.left
        else
          parent.right = node_to_delete.right
        end
      end
      
    # if node has two children
    else
      successor = node_to_delete.right
      while successor.left do
        successor = successor.left
      end
      node_to_delete.title = successor.title
      node_to_delete.data = successor.rating
      delete(root, successor.title)
    end
  end

  def >(node, data)
    node.rating > find(@root, data).rating
  end

  def <(node, data)
    node.rating < find(@root, data).rating
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
