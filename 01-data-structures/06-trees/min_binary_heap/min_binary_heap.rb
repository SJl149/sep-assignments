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
      current = @last
      parent = find_parent(root, @last.title)
      if parent.left == @last
        parent.right = node
      else
        while parent != root && parent.right == current
          current = parent
          parent = find_parent(root, parent.title)
        end
        if parent == root && parent.left == current
          parent = parent.right
          while parent.left
            parent = parent.left
          end
          parent.left = node
        else
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
    return nil if data == nil
    # find second-last node
    current = @last
    parent = find_parent(root, @last.title)
    if parent.right == @last
      second_last = parent.left
    else
      while parent != root && parent.left == current
        current = parent
        parent = find_parent(root, parent.title)
      end
      if parent == root && parent.left == current
        while parent.right
          parent = parent.right
        end
        second_last = parent
      else
        parent = parent.left
        while parent.right
          parent = parent.right
        end
        second_last = parent
      end

    end

    # find node_to_delete, set to @last, set @last to second-last, set parent-child to nil
    node_to_delete = find(root, data)
    parent_last = find_parent(root, @last.title)
    node_to_delete.title = @last.title
    node_to_delete.rating = @last.rating

    if parent_last.left == @last
      parent_last.left = nil
    else
      parent_last.right = nil
    end
    @last = second_last

    # check up for heap property
    parent = find_parent(root, node_to_delete.title)
    while parent && node_to_delete.rating < parent.rating
      title = parent.title
      rating = parent.rating
      parent.title = node_to_delete.title
      parent.rating = node_to_delete.rating
      node_to_delete.title = title
      node_to_delete.rating = rating
      node_to_delete = parent
      parent = find_parent(root, node_to_delete.title)
    end

    # check down for heap property
    while (node_to_delete.left != nil && node_to_delete.left.rating < node_to_delete.rating) || (node_to_delete.right && node_to_delete.right.rating < node_to_delete.rating)
      if node_to_delete.left && node_to_delete.left.rating < node_to_delete.rating
        title = node_to_delete.left.title
        rating = node_to_delete.left.rating
        node_to_delete.left.title = node_to_delete.title
        node_to_delete.left.rating = node_to_delete.rating
        node_to_delete.title = title
        node_to_delete.rating = rating
        node_to_delete = node_to_delete.left
      elsif node_to_delete.right != nil && node_to_delete.right.rating < node_to_delete.rating
        title = node_to_delete.right.title
        rating = node_to_delete.right.rating
        node_to_delete.right.title = node_to_delete.title
        node_to_delete.right.rating = node_to_delete.rating
        node_to_delete.title = title
        node_to_delete.rating = rating
        node_to_delete = node_to_delete.right
      end
    end
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
