def bsearch_it(array, value)
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low + high) / 2
    if array[mid] > value
      high = mid -1
    elsif array[mid] < value
      low = mid + 1
    else
      return mid
    end
  end
  return "Value not found."
end

collection =* (0..500)
puts bsearch_it(collection, 499)
puts bsearch_it(collection, 600)
