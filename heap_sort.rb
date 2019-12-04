#ヒープの生成
def create_heap(array, parent, last_element)
  tmp = array[parent]
  child = 0

  while parent < (last_element + 1) / 2
    left_child = (parent * 2) + 1
    right_child = left_child + 1

    if array[right_child].to_i > array[left_child].to_i &&
       right_child <= last_element
      child = right_child
    else
      child = left_child
    end

    if tmp >= array[child]
      break
    end

    array[parent] = array[child]
    parent = child
  end
  array[parent] = tmp
end

#配列の中身を交換
def swap(array, a, b)
    array[a], array[b] = array[b], array[a]
end

#ヒープソート
def heap_sort(array)
  l = array.length - 1
  center = l / 2

  while center >= 0
    create_heap(array, center, l)
    center += -1
  end
  last_element = l

  while last_element > 0
    swap(array, last_element, 0)
    create_heap(array, 0, last_element - 1)
    last_element += -1
  end
  p array
end


