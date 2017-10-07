require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    i = index(key, size)
    if @items[i] != nil
      i = next_open_index(index(key, size))
      if i == -1
        resize
        i = next_open_index(index(key, size))
      end
    end
    @items[i] = Node.new(key, value)
  end

  def [](key)
    i = index(key, size)
    while @items[i].key != key
      if i == size
        i = 0
      else
        i += 1
      end
    end
    @items[i].value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    x = 0
    key.each_codepoint { |c| x += c }
    x % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    count = 0


    i = index
    while @items[i] != nil && i < count
      if i == size
        i = 0
      else
        i += 1
      end
      count += 1
    end
    if count == i
      return -1
    else
      return i 
    end
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
    temp_items = @items
    @items = Array.new(size * 2)
    temp_items.each do |item|
      unless item == nil
        @items[index(item.key, size)] = item
      end
    end
  end
end
