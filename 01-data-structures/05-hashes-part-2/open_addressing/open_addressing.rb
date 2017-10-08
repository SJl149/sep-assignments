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
      i == size ? i = 0 : i += 1
    end
    @items[i].value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    x = key.each_codepoint.sum
    x % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    i = index
    while @items[i] != nil && i < size
      i += 1
    end
    i == size ? -1 : i
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
