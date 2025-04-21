# @param {Integer[]} answers
# @return {Integer}
def num_rabbits(answers)
    frequency_hash = Hash.new(0)
    answers.each do |rabbit|
        frequency_hash[rabbit] += 1
    end
    
    sum = 0
    frequency_hash.each do |k, v|
        sum += ((v + k) / (k + 1)) * (k + 1)
    end
    sum
end
