# This method takes n arrays as input and combine them in sorted ascending  order
def time_optimiztions_ruby(*arrays)
  combined_array = arrays.flatten
  quick_sort(combined_array)
end

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

time_optimiztions_ruby([1,5,2,6,3,5], [3,6,4,5,9,8,33])

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
