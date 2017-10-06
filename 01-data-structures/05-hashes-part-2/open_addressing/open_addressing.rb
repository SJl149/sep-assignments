require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    i = index(key, size)
    resize unless @items[i] == nil || @items[i].value == value
    @items[i] = Node.new(key, value)
  end

  def [](key)
    @items[index(key, size)].value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    x = 0
    key.each_codepoint { |c| x += c }
    (x * key.length) % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
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
