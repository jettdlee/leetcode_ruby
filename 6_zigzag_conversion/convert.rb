# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1
    zig_zag_array = Array.new(num_rows) { Array.new }
    x = 0
    y = 0

    s.chars.each do |char|
    puts char
        if x % (num_rows - 1) == 0
            zig_zag_array[y] << char
            if y == (num_rows -1)
                y = 0
                x += 1
            else
                y += 1
            end
        else
            position = (num_rows - 1) - (x % (num_rows - 1))
            (0..zig_zag_array.size-1).each do |index|
                if index == position
                    zig_zag_array[index] << char
                end
            end
            x += 1
        end
    end
    
    string = ""
    
    zig_zag_array.each do |array|
        string += array.join
    end
    return string
end
