require 'benchmark'

# Quicksort
def quick_sort(collection)
  lngth = collection.length
  if lngth <= 1
    collection
  else
    pivot = collection.delete_at(lngth - 1)
    smaller = []
    larger = []
    collection.each do |item|
      item <= pivot ? smaller << item : larger << item
    end
    sorted = []
    sorted << quick_sort(smaller)
    sorted << pivot
    sorted << quick_sort(larger)
    sorted.flatten!
  end
end

# Heap Sort
def heap_sort(collection)
  heap = create_heap(collection)
  last = heap.length - 1
  while last > 0
    heap[0], heap[last] = heap[last], heap[0]
    heapify(heap, 0, last)
    last -= 1
  end
  heap
end

def create_heap(heap)
  i = (heap.length / 2 - 1).floor
  while i >= 0
    heapify(heap, i, heap.length)
    i -= 1
  end
  heap
end

def heapify(heap, i, max)
  while i < max
    index = i
    left_child = (2 * i) + 1
    right_child = left_child + 1

    if left_child < max && heap[left_child] > heap[index]
      index = left_child
    end
    if right_child < max && heap[right_child] > heap[index]
      index = right_child
    end
    if index == i
      return
    end
    heap[i], heap[index] = heap[index], heap[i]
    i = index
  end
  heap
end

# Bucket Sort
def bucket_sort(collection, bucket_size = 10)
  return collection if collection.length <= 1
  min = collection.min
  max = collection.max

  # Create buckets
  bucket_count = ((max.ord - min.ord) / bucket_size).floor + 1
  buckets = Array.new(bucket_count)
  (0..buckets.length - 1).each { |i| buckets[i] = [] }

  # Place in buckets
  (0..collection.length - 1).each { |i| buckets[((collection[i].ord - min.ord) / bucket_size).floor].push(collection[i]) }

  # Sort buckets and return
  collection.clear
  (0..buckets.length - 1).each do |i|
    buckets[i] = insertion_sort(buckets[i])
    buckets[i].each { |value| collection.push(value) }
  end
  collection.reject!{ |value| value == nil }
  collection
end

def insertion_sort(collection)
  sorted = [collection.delete_at(0)]
  for val in collection
    sorted_index = 0
    while sorted_index < sorted.length
      if val <= sorted[sorted_index]
        sorted.insert(sorted_index, val)
        break
      elsif sorted_index == sorted.length - 1
        sorted.insert(sorted_index + 1, val)
        break
      end
      sorted_index += 1
    end
  end
  sorted
end

# Benchmark the quick_sort, heap_sort, and bucket_sort.
test_collection = (0..10000).to_a.sample(50)
puts " "
puts "Benchmark tests for quick_sort, heap_sort, and bucket_sort"
puts " "
print test_collection
puts " "
Benchmark.bm do |bm|
  bm.report('quick_sort') do
    quick_sort(test_collection)
  end
  bm.report('heap_sort') do
    heap_sort(test_collection)
  end
  bm.report('bucket_sort') do
    bucket_sort(test_collection)
  end
end
