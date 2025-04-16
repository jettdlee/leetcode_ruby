# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    (1...nums.length).each do |index|
        nums[index] = nums[index] + nums[index-1]
    end
    nums
end
