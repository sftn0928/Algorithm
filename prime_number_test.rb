require 'minitest/autorun'
require '../algorithm/prime_number'

#素数の判定テスト 
class PrimeNumberTest < Minitest::Test
    def test_prime_number
        assert_equal "#{3}は素数", prime_number(3)
        assert_equal "#{4}は非素数", prime_number(4)
        assert_equal "#{5}は素数", prime_number(5)
        assert_equal "#{8}は非素数", prime_number(8)
        assert_equal "#{11}は素数", prime_number(11)
        assert_equal "#{14}は非素数", prime_number(14)
    end
end