# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    steps = 0
    while num > 0
        steps += 1
        if num % 2 == 0
            num = num / 2
        else
            num -= 1
        end
    end
    steps
end
