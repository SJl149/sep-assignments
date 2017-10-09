require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @items = Array.new(size)
  end

  def []=(key, value)
    i = index(key, size)
    if @items[i] == nil
      @items[i] = LinkedList.new
    end
    @items[i].add_to_front(Node.new(key, value))
    resize if load_factor > @max_load_factor
  end

  def [](key)
    list_item = @items[index(key, size)].head
    while list_item.key != key
      list_item = list_item.next
    end
    list_item.value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    x = key.each_codepoint.sum
    x % size
  end

  # Calculate the current load factor
  def load_factor
    items_count = 0
    @items.each do |list|
      unless list == nil
        item = list.head
        items_count += 1
        until item.next == nil
          item = item.next
          items_count += 1
        end
      end
    end
    items_count * 1.0 / size
  end

  # Prints a map of the hash and the load_factor
  def print
    puts "#{self}: @items: ["
    @items.each do |list|
      if list == nil
        puts "\tnil;"
      else
        item = list.head
        items = "\t#{item} @key=\"#{item.key}\" @value=\"#{item.value}\""
        until item.next == nil
          items += ", #{item} @key=\"#{item.key}\" @value=\"#{item.value}\""
          item = item.next
        end
        puts "#{items};"
      end
    end
    puts "\t],"
    puts "load_factor: #{load_factor}"



    #puts "#{self} @items = #{@items}, load_factor = #{load_factor}"
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
    temp_items = @items
    @items = Array.new(size * 2)
    temp_items.each do |list|
      unless list == nil
        while list.head
          item = list.head
          i = index(item.key, size)
          if @items[i] == nil
            @items[i] = LinkedList.new
          end
          @items[i].add_to_front(Node.new(item.key, item.value))
          list.remove_front
        end
      end
    end
  end
end
