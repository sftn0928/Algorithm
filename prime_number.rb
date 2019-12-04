# 素数の判定
def prime_number(number)
    for i in 2..number-1 do
        if number % i != 0
            return p "#{number}は素数"
        else 
            return p "#{number}は非素数"
        end
    end
end

