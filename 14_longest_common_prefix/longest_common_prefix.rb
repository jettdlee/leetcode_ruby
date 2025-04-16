# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  longest = ""
  first = strs.first
  current_longest = ""
  first.chars.each_with_index do |char, index|
    current_longest += char
    strs.each do |str|
      # puts "#{str[0..index]} vs #{current_longest}"
      unless str[0..index].include?(current_longest)
        if current_longest.length > longest.length
          longest = current_longest[0...-1]
        end
        return longest
        exit
      end
    end
  end
  return current_longest
end



