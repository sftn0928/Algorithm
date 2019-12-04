#２分探索
def binary_search(array, key)
    #探索範囲先頭の要素
    top = 0
    #探索範囲末尾の要素
    bottom = array.length - 1
    while top <= bottom
        middle = (top + bottom) / 2
        if array[middle] == key
            exist = "true"
            break      #探索完了時ループ終了
        elsif array[middle] < key
            top = middle + 1
        elsif array[middle] > key
            bottom = middle - 1
        end
    end
    if exist
        p "array[#{middle}]にある"
    else
        p "#{key}は存在しない"
    end
end
