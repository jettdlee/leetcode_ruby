# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
    results = 0
    (2...arr.length).each do |k|
        (1...(arr.length - 1)).each do |j|
            break if j >= k
            (0...(arr.length - 2)).each do |i|
                break if i >= j
                a_good = ((arr[i] - arr[j]).abs <= a)
                b_good = ((arr[j] - arr[k]).abs <= b)
                c_good = ((arr[i] - arr[k]).abs <= c)
                if a_good && b_good && c_good
                    results += 1
                end
            end
        end
    end
    return results
end
