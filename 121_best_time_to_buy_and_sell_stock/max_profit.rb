# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    buy_price = Float::INFINITY
    profit = 0
    prices.each do |price|
        buy_price = price if price < buy_price
        difference = price - buy_price
        profit = difference if difference > profit
    end
    profit
end
