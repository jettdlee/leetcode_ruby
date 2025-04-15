# @param {Integer} x
# @return {Integer}
def reverse(x)
    array = x.to_s.chars
    is_negative = 1
    if array.first == "-"
        is_negative = -1
        array = array.drop(1)
    end
    result = array.reverse.join.to_i * is_negative
    if result < -2.pow(31) || result > (2.pow(31) -1)
        return 0
    else
        return result
    end
end
