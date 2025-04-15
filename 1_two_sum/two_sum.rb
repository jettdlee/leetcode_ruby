def two_sum(nums, target)
    hash = {}
    (0...nums.length).each do |index|
        complement = target - nums[index]
        if hash[complement]
            return [index, hash[complement]]
        end
        hash[nums[index]] = index
    end
    return []
end
