require 'minitest/autorun'
require '../algorithm/linear_search'

#線形探索（番兵法）テスト

class LinearSearchTest < Minitest::Test
    def test_linear_search
        array = [1, 3, 5, 7, 9]
        assert_equal "array[0]にある", linear_search(array, 1)
        assert_equal "2は存在しない", linear_search(array, 2)
        
        array = [-2, 4, 6, 8, 15, 37, 90]
        assert_equal "5は存在しない", linear_search(array, 5)
        assert_equal "array[3]にある", linear_search(array, 8)

        array = [-5, 15, 25, 39, 40, 88, 178]
        assert_equal "array[2]にある", linear_search(array, 25)
        assert_equal "100は存在しない", linear_search(array, 100)
    end
end