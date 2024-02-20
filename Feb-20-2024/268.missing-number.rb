#
# @lc app=leetcode id=268 lang=ruby
#
# [268] Missing Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  missing = n = nums.size
  nums.each { |num| missing ^= num ^ (n -= 1) }
  missing
end

# Test cases
nums = [3, 0, 1]
puts missing_number(nums)  # Output: 2

nums = [0, 1]
puts missing_number(nums)  # Output: 2

nums = [9, 6, 4, 2, 3, 5, 7, 0, 1]
puts missing_number(nums)  # Output: 8
# @lc code=end
