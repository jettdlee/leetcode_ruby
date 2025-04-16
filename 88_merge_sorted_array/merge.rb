# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    return nums1 if n == 0
    pointer = m + n - 1
    m_pointer = m - 1
    n_pointer = n - 1

    (m+n).times do |index|
        m_num = m_pointer >= 0 ? nums1[m_pointer] : -(10.pow(10))
        n_num = n_pointer >= 0 ? nums2[n_pointer] : -(10.pow(10))
        if n_num.to_i > m_num.to_i
            nums1[pointer] = n_num
            n_pointer -= 1
        else
            nums1[pointer] = m_num
            m_pointer -= 1
        end
        pointer -= 1
    end
end
