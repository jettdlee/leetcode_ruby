# Sliding window problem
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_good(nums, k)
  frequency_hash = Hash.new(0)
  left = 0
  pairs = 0
  result = 0
  n = nums.length
  nums.each_with_index do |num, right|
    puts "\nwindow: #{nums[left..right]}"
    puts "frequency: #{frequency_hash}"

    pairs += frequency_hash[num]
    frequency_hash[num] += 1

    while pairs >= k
      result += n - right
      frequency_hash[nums[left]] -= 1
      pairs -= freq[nums[left]]
      left += 1
    end
  end
  return results
end
