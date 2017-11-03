require 'benchmark'

# This method takes n arrays as input and combine them in sorted ascending  order
def time_optimiztions_ruby(*arrays)
  combined_array = arrays.flatten
  merge_sort(combined_array)
end

def merge_sort(ary)
  if ary.size < 2
    return ary
  else
    mid = ary.size / 2
    left = merge_sort(ary[0..mid - 1])
    right = merge_sort(ary[mid..ary.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

# Benchmark time_optimiztions_ruby
collection = (0..10000).to_a
array1 = []
array2 = []
array3 = []
array4 = []

100.times do
  array1 << collection.sample
  array2 << collection.sample
  array3 << collection.sample
  array4 << collection.sample
end

reverse_collection = collection.reverse

Benchmark.bm do |bm|
  bm.report("Benchmark test for #time_optimiztions_ruby") do
    time_optimiztions_ruby(array1, array2, array3, array4)
  end
  bm.report("Benchmark test for #time_optimiztions_ruby with reverse_collection") do
    time_optimiztions_ruby(reverse_collection)
  end
end
