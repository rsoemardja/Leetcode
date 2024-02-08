#
# @lc app=leetcode id=279 lang=ruby
#
# [279] Perfect Squares
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def num_squares(n)
  # Initialize array to store minimum number of squares for each number
  dp = Array.new(n + 1) { Float::INFINITY }
  dp[0] = 0

  # Iterate through all numbers up to n
  (1..n).each do |i|
    # Iterate through possible perfect squares less than or equal to i
    (1..Math.sqrt(i).floor).each do |j|
      # Update dp[i] with the minimum of current value and using j^2 as a perfect square
      dp[i] = [dp[i], dp[i - j**2] + 1].min
    end
  end

  # Return the least number of squares for n
  dp[n]
end

# Test cases
puts num_squares(12)  # Output: 3
puts num_squares(13)  # Output: 2
# @lc code=end
