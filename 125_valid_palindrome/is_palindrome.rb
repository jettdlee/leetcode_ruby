# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    striped_string = s.gsub(/[^a-zA-Z0-9]+/i, '').downcase
    striped_string == striped_string.reverse
end
