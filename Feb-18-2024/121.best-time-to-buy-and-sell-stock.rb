#
# @lc app=leetcode id=121 lang=ruby
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  #initialize the min price to the first price
  max_profit = 0
  min_price = Float::INFINITY

  # iterate through the prices
  prices.each do |price|
    # update the min price
    min_price = price if price < min_price

    # calculate the profit
    current_profit = price - min_price
    max_profit = current_profit if current_profit > max_profit
  end

  # return the max profit
  max_profit
end

# Example usage
prices = [7,1,5,3,6,4]
puts max_profit(prices) # 5
# @lc code=end
