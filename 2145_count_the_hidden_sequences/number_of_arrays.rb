# @param {Integer[]} differences
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def number_of_arrays(differences, lower, upper)
    min_sum = 0
    max_sum = 0
    sum = 0
    differences.each do |difference|
        sum += difference
        min_sum = [min_sum, sum].min
        max_sum = [max_sum, sum].max
    end
    lower_threshold = lower - min_sum
    upper_threshold = upper - max_sum
    [upper_threshold - lower_threshold + 1, 0].max
end
