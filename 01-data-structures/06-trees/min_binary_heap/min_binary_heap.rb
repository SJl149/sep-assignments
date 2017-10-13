require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
    @last = root
  end

  def insert(root, node)
    if @last == root
      root.left = node
    else
      parent = find_parent(root, @last.title)
      if parent.left == @last
        parent.right = node
      else
        current = parent
        parent = find_parent(root, parent.title)
        while parent.right == node
          current = parent
          parent = find_parent(root, parent.title)
        end
        if parent == root
          until parent.left == nil
            parent = parent.left
          end
          parent.left = node
        else
          parent = parent.right
          while parent.left
            parent = parent.left
          end
          parent.left = node
        end
      end
    end
    @last = node


    parent = find_parent(root, node.title)
    if parent.rating < node.rating
      temp = parent
      parent.title = node.title
      parent.rating = node.rating
      node.title = temp.title
      node.rating = temp.rating
    end
  end

  def delete(root, data)

  end

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
