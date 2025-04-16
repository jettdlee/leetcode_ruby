# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    pointer = 0
    nums.each do |num|
        if num != nums[pointer]
            pointer += 1
            nums[pointer] = num
        end
    end
    return pointer + 1
end
