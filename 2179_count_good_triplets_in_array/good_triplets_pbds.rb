def good_triplets(nums1, nums2)
    n = nums1.length
    mpp = Array.new(n)
    nums1.each_with_index do |val, i|
        mpp[val] = i
    end

    n = nums2.length
    total = 0
    st = []

    nums2.each do |num|
        index = mpp[num]
        left = st.bsearch_index { |val| val >= index } || st.length
        right = (n - 1 - index) - (st.length - left)
        total += left * right
        insert_pos = st.bsearch_index { |val| val >= index } || st.length
        st.insert(insert_pos, index)
    end
    return total
end
