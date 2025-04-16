# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    result = nums.length
    nums.each_with_index do |num, index|
        if num == target || num > target
            result = index
            break
        end
    end
    return result
end
