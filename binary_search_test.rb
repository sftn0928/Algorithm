require 'minitest/autorun'
require '../algorithm/binary_search'

#２分探索テスト

class BinarySearchTest < Minitest::Test
    def test_bunary_search
        array = [1, 3, 5, 7, 9]
        assert_equal "array[0]にある", binary_search(array, 1)
        assert_equal "2は存在しない", binary_search(array, 2)
        
        array = [-2, 4, 6, 8, 15, 37, 90]
        assert_equal "5は存在しない", binary_search(array, 5)
        assert_equal "array[3]にある", binary_search(array, 8)

        array = [-5, 15, 25, 39, 40, 88, 178]
        assert_equal "array[2]にある", binary_search(array, 25)
        assert_equal "100は存在しない", binary_search(array, 100)
    end
end