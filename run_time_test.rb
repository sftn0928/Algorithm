require 'minitest/autorun'
require '../algorithm/bubble_sort'
require '../algorithm/heap_sort'
require 'benchmark'

#バブルソートの実行時間測定
def bubble_sort_run_time(array)
    run_time = Benchmark.realtime do
        bubble_sort(array)
    end
    p run_time
end

#ヒープソートの実行時間測定
def heap_sort_run_time(array)
    run_time = Benchmark.realtime do
        heap_sort(array)
    end
    p run_time
end

#乱数の配列を作成
def create_arrray
    @array = []
    num = 100
    num.times { @array << rand(num)}
end

assert_equal a, b

class RunTimeTest < Minitest::Test
    def test_run_time
        create_arrray
        puts "バブルソート"
        bubble_sort_run_time(@array)
        puts ""
        puts "ヒープソート"
        heap_sort_run_time(@array)
    end
end