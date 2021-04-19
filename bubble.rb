def bubble_sort(array)
  unsorted = true
  while unsorted
    i = 0
    unsorted = false
    while i < array.length - 1
      if array[i] > array[i + 1]
        tmp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tmp
        unsorted = true
      end
      i += 1
    end
  end

  array
end

def bubble_sort_by(array)
  unsorted = true
  while unsorted
    i = 0
    unsorted = false
    while i < array.length - 1
      if (yield array[i], array[i + 1]) >= 0
        tmp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tmp
        unsorted = true
      end
      i += 1
    end
  end

  puts array
end

bubble_sort_by %W([hi hello hey]) do |left, right|
  left.length - right.length
end
