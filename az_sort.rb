def alphabetize(arr, rev = false)
    if rev
        arr.sort!
        arr.reverse!
    else
        arr.sort!
    end
end

numbers = [1,4,3,5,2,6,0]
puts alphabetize(numbers)