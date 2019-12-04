#線形探索（番兵法）
def linear_search(array, key)
    #配列の最後尾に番兵（探す値）を追加
    array.push(key)
    #番兵の配列番号
    n = array.length-1
    i = 0
    loop do
        if array[i] == key
            break
        end
        i += 1
    end

    if i == n
        return  p "#{key}は存在しない"
    else 
        return  p "array[#{i}]にある"
    end
end
