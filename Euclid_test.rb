require 'minitest/autorun'
require '../algorithm/Euclid'

#ユークリッドの互除法テスト
class EuclidTest < Minitest::Test
    def test_Euclid
        assert_equal "最大公約数は2", Euclid(22, 8)
        assert_equal "最大公約数は5", Euclid(125, 35)
        assert_equal "最大公約数は5", Euclid(35, 125)
        assert_equal "最大公約数は22", Euclid(22, 220)
        assert_equal "最大公約数は100", Euclid(100, 100)
        assert_equal "最大公約数は120", Euclid(1920, 1080)
    end
end