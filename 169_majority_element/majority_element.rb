# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    frequency_hash = Hash.new(0)
    max = 0
    nums.each do |num|
        frequency_hash[num] += 1
    end
    frequency_hash.max_by{|k,v| v }.first
end

def faster(nums)
  nums.sort[nums.size/2]
end
