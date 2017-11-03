require 'benchmark'

# This method takes n arrays as input and combine them in sorted ascending  order
def code_optimiztions_ruby(*arrays)
  combined_array = arrays.flatten
  sorted_array = [combined_array.pop]

  for val in combined_array
    i = 0
    length = sorted_array.length
    while i < length
      if val < sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
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
  bm.report("Benchmark test for #code_optimiztions_ruby") do
    code_optimiztions_ruby(array1, array2, array3, array4)
  end
  bm.report("Benchmark test for #code_optimiztions_ruby with reverse_collection") do
    code_optimiztions_ruby(reverse_collection)
  end
  bm.report("Benchmark test for #code_optimiztions_ruby with collection") do
    code_optimiztions_ruby(collection)
  end
end
