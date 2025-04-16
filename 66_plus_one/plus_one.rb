# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    pointer = -1
    while
        current_digit = digits[pointer]
        if current_digit != 9
            digits[pointer] += 1
            break
        else
          if digits[pointer] == 9 && digits[pointer-1].nil?
            digits.prepend(0)
          end
            digits[pointer] = 0
            pointer -= 1
        end
    end
    return digits
end


