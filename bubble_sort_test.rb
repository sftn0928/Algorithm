require 'minitest/autorun'
require '../algorithm/bubble_sort'

#バブルソートテスト
class BubbleSortTest < Minitest::Test
    def test_bubble_sort
        array1 = [1,6,5,4]
        assert_equal array1.sort, bubble_sort(array1)
        array2 = [5, 10, 2, -4, 5]
        assert_equal array2.sort, bubble_sort(array2)
        array3 = [7, 6, -5, -4, 9, 1]
        assert_equal array3.sort, bubble_sort(array3)
    end
end