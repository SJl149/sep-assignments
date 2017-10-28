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
def bucket_sort(collection)
  return collection if collection.length <= 1
end
