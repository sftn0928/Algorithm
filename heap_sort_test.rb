require 'minitest/autorun'
require '../algorithm/heap_sort'

#ヒープソートテスト
class HeapSortTest < Minitest::Test
    def test_heap_sort
        array1 = [1, 6, 5, 4]
        assert_equal array1.sort, heap_sort(array1)
        array2 = [5, 10, 2, -4, 5]
        assert_equal array2.sort, heap_sort(array2)
        array3 = [7, 6, -5, -4, 9, 1]
        assert_equal array3.sort, heap_sort(array3)
    end
end