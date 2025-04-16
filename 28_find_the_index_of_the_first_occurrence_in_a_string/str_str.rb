# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    first_char = needle[0]
    result = -1
    haystack.chars.each_with_index do |char, i|
        if char == first_char
            hay_slice = haystack[i..(i+needle.length-1)]
            if hay_slice == needle
                result = i
                break
            end
        end
    end
    result
end
