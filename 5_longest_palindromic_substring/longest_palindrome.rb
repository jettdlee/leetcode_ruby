def longest_palindrome(s)
    return s if s.empty?

    start = 0
    max_length = 1

    (0...s.length).each do |i|
        # Odd-length palindrome
        l, r = expand_from_center(s, i, i)
        if r - l + 1 > max_length
            start = l
            max_length = r - l + 1
        end

        # Even-length palindrome
        l, r = expand_from_center(s, i, i + 1)
        if r - l + 1 > max_length
            start = l
            max_length = r - l + 1
        end
    end

    s[start, max_length]
end

def expand_from_center(s, left, right)
    while left >= 0 && right < s.length && s[left] == s[right]
        left -= 1
        right += 1
    end
    [left + 1, right - 1]
end
