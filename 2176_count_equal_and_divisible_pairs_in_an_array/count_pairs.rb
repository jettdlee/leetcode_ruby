# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
    hash = {}
    count = 0
    nums.each_with_index do |num, index|
        unless hash[num].nil?
            count += hash[num].count { |x| (x * index) % k == 0 }
            hash[num] << index
        else
            hash[num] = [index]
        end
    end
    count
end
