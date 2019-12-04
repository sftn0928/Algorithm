#ユークリッドの互除法
def Euclid(x, y)
    #xがyより大きくなるように入れ替える
    if x < y
        x, y = y, x
    end

    if (y == 0)
        last_x = x
    else
        return  Euclid(y, x % y)  #再帰メソッド
    end
    p "最大公約数は#{last_x}"
end
