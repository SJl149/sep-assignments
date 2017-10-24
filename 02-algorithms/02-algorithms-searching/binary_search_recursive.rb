def bsearch_rec(array, low, high, value)
  if low <= high
    mid = (low + high) / 2
    if array[mid] > value
      return bsearch_rec(array, low, mid - 1, value)
    elsif array[mid] < value
      return bsearch_rec(array, mid + 1, high, value)
    else
      return mid
    end
  else
    return "Value not found."
  end
end

collection =* (0..500)
puts bsearch_rec(collection, 0, collection.length - 1, 499)
collection =* (0..500)
puts bsearch_rec(collection, 0, collection.length - 1, 600)
