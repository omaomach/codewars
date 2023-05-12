def sum_arrays(array1,array2)
    if (array1.length < 1 && array2.length < 1)
        return []
    elsif (array1.length < 1)
        return array2
    elsif (array2.length < 1)
        return array2
    end

    num1 = array1.join.to_i
    num2 = array2.join.to_i
    sum = num1 + num2

    strArr = sum.abs.to_s.chars.map(&:to_i)
    strArr[0] = sum < 0 ? -strArr[0] : strArr[0]
    newArr = []

    for element in strArr 
        newArr.push(element.to_i)
    end
    return newArr

end

sum_arrays([3,2,6,6], [-7,2,2,8])