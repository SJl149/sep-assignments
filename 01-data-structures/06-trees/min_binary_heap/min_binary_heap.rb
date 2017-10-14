require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
    @last = root
    @heapsize = 1
  end

  def insert(root, node)
    @heapsize += 1
    if @last == root
      root.left = node
    else
      current = @last
      parent = find_parent(root, @last.title)
      if parent.left == @last
        parent.right = node
      else
        while parent != root && parent.right == current
          current = parent
          parent = find_parent(root, parent.title)
        end

        if parent == root && @heapsize % 2 == 0
          while parent.left
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
    while parent && node.rating < parent.rating
      title = parent.title
      rating = parent.rating
      parent.title = node.title
      parent.rating = node.rating
      node.title = title
      node.rating = rating
      node = parent
      parent = find_parent(root, node.title)
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
