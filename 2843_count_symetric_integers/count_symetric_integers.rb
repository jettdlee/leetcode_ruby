# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_symmetric_integers(low, high)
    count = 0
    (low..high).each do |number|
        count += 1 if is_symetric(number)
    end
    return count
end

def is_symetric(number)
    number_array = map_to_a(number)
    length = number_array.length
    return false if length % 2 == 1
    first_half = number_array[0..length/2-1]
    second_half = number_array[(length/2)..-1]
    return first_half.sum == second_half.sum
end

def map_to_a(number)
    number.to_s.chars.map { |i| i.to_i }
end
