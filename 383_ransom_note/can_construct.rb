# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    frequency_hash = Hash.new(0)
    magazine.chars.each do |char|
        frequency_hash[char] += 1
    end

    ransom_note.chars.each do |char|
        frequency_hash[char] -= 1
    end
    result = frequency_hash.values.map { |i| i < 0 }
    return !result.any?
end
