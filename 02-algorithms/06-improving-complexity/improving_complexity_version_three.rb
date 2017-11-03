require 'benchmark'

# This method takes n arrays as input and combine them in sorted ascending  order
def space_optimizations_ruby(*arrays)
  combined_array = arrays.flatten
  i = 0
  while i < combined_array.length
    temp = combined_array[i]
    j = i - 1
    while j >= 0 && combined_array[j] > temp
      combined_array[j + 1] = combined_array[j]
      j -= 1
    end
    combined_array[j + 1] = temp
    i += 1
  end
  combined_array
end

# Benchmark time_optimiztions_ruby
collection = (0..10000).to_a
array1 = []
array2 = []
array3 = []
array4 = []

1000.times do
  array1 << collection.sample
  array2 << collection.sample
  array3 << collection.sample
  array4 << collection.sample
end

reverse_collection = collection.reverse

Benchmark.bm do |bm|
  bm.report("Benchmark test for #space_optimizations_ruby") do
    space_optimizations_ruby(array1, array2, array3, array4)
  end
  bm.report("Benchmark test for #space_optimizations_ruby with reverse_collection") do
    space_optimizations_ruby(reverse_collection)
  end
  bm.report("Benchmark test for #space_optimizations_ruby with collection") do
    space_optimizations_ruby(collection)
  end
end
