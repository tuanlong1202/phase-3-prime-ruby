# Add  code here!

def initArray(size)
    retArray = []
    i = 2
    while i <= size
        retArray << i
        i += 1
    end
    retArray
end

def divisible(number)
    i = 2
    retBln = false
    while i < ((number/2)+1)
        if number%i == 0
            retBln = true
            break
        end
        i += 1
    end
    retBln
end

def prime?(number)
    if number < 2
        return false
    else
        numberArray = initArray(number)
        numberArray.each_with_index do |num,index|
            if divisible(num)
                numberArray[index] = 0
            end
        end
        return numberArray.include?(number)
    end
end
