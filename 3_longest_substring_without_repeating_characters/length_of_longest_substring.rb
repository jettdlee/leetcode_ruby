def length_of_longest_substring(s)
    substring = []
    result = 0
    s.chars.each do |char|
        if substring.include?(char)
            result = substring.length if result < substring.length
            substring.each do |sub_char|
                substring = substring.drop(1)
                break if sub_char == char
            end
        end
        substring << char
    end
    result = substring.length if result < substring.length
    return result
end
