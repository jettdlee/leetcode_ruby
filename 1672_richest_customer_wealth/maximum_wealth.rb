# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
    max_wealth = 0
    accounts.each do |account|
        sum = account.sum
        max_wealth = sum if max_wealth < sum
    end
    max_wealth
end
