# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    pointer = 0
    count = 0
    nums.each do |num|
        if num != val
            nums[pointer] = num
            pointer += 1
            count += 1
        end
    end
    return count
end
