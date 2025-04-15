require "binary_index_tree"

def good_triplets(nums1, nums2)
    n = nums1.length
    index_mapping = Array.new(n)
    nums1.each_with_index { |val, index| index_mapping[val] = index }
    # Map nums2 relative to index positions on array nums 1
    n.times.each { |index| nums2[index] = index_mapping[nums2[index]] }
    print "index mapping: #{index_mapping}"
    puts ""
    print "nums2 index mapping: #{nums2}"
    puts ""

    left_tree = BinaryIndexTree.new(n)
    left_counts = Array.new(n, 0)
    (0...n).each do |index|
        left_sum = left_tree.get_sum(nums2[index] - 1)
        left_counts[index] = left_sum
        left_tree.update(nums2[index], 1)
        puts "left_sum: #{left_sum}"
        print "index: #{index}, #{left_tree.tree}"
        puts ""
    end
    print "left_counts: #{left_counts}"

    right_tree = BinaryIndexTree.new(n)
    right_counts = Array.new(n, 0)
    
    (n - 1).downto(0).each do |index|
        total_sum = right_tree.get_sum(n - 1)
        left_sum = right_tree.get_sum(nums2[index])
        right_counts[index] = total_sum - left_sum
        right_tree.update(nums2[index], 1)
        puts "right_sum: #{total_sum - left_sum}"
        print "index: #{index}, #{right_tree.tree}"
        puts ""
    end
    puts ""
    print "right_counts: #{right_counts}"

    total = 0
    (0...n).each do |i|
        total += left_counts[i] * right_counts[i]
    end
    total
end

# nums1 = [4,0,1,3,2]
# nums2 = [4,1,0,2,3]
#
# index mapping: [1, 2, 4, 3, 0]
# nums2 index mapping: [0, 2, 1, 4, 3]
#
# left_sum: 0
# tree index: 0, [0, 1, 1, 0, 1, 0, 0]
# left_sum: 1
# tree index: 1, [0, 1, 1, 1, 2, 0, 0]
# left_sum: 1
# tree index: 2, [0, 1, 2, 1, 3, 0, 0]
# left_sum: 3
# tree index: 3, [0, 1, 2, 1, 3, 1, 1]
# left_sum: 3
# tree index: 4, [0, 1, 2, 1, 4, 1, 1]
# left_counts: [0, 1, 1, 3, 3]
#
# right_sum: 0
# tree index: 4, [0, 0, 0, 0, 1, 0, 0]
# right_sum: 0
# tree index: 3, [0, 0, 0, 0, 1, 1, 1]
# right_sum: 2
# tree index: 2, [0, 0, 1, 0, 2, 1, 1]
# right_sum: 2
# tree index: 1, [0, 0, 1, 1, 3, 1, 1]
# right_sum: 4
# tree index: 0, [0, 1, 2, 1, 4, 1, 1]

# right_counts: [4, 2, 2, 0, 0]
