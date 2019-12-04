#バブルソート
def bubble_sort(array)
    l = array.length - 1
    for i in 0..l-1 do
        for j in i+1..l do
            if array[i] > array[j]
                #配列の中身入れ替え
                array[i], array[j] = array[j], array[i]
            end
        end
    end
    p array
end