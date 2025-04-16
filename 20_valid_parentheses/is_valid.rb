# @param {String} s
# @return {Boolean}
def is_valid(s)
    closing_condition = {
        "(" => ")",
        "[" => "]",
        "{" => "}"
    }
    open = ["(", "[", "{"]
    close = [")", "]", "}"]
    current_open = []
    s.chars.each do |bracket|
        if open.include?(bracket)
            current_open << bracket
        elsif close.include?(bracket)
            opening_bracket = current_open[-1]
            return false if opening_bracket.nil?
            if closing_condition[opening_bracket] == bracket
                current_open = current_open[0...-1]
            else
                return false
            end
        end
    end
    return current_open.length == 0
end
