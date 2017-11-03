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
